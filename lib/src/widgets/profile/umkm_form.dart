import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/navigation.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/schema.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/umkm.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/spinner.dart';

class UMKMProfileForm extends HookWidget {
  UMKMProfileForm(
      {super.key,
      required this.handleCancel,
      required this.handleContinue,
      required this.handleGoTo,
      required this.fallbackRedirect,
      this.isRegister = false});
  final void Function() handleCancel;
  final void Function() handleContinue;
  final void Function(int index) handleGoTo;
  final void Function(BuildContext context) fallbackRedirect;
  final bool isRegister;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final auth = NhostAuthProvider.of(context)!;
    final userId = auth.currentUser?.id;
    if (userId == null) {
      handleGoTo(0);
      return const SizedBox();
    }
    final umkmNameController = useTextEditingController();
    final umkmDescriptionController = useTextEditingController();
    final getUMKM = useQuery$GetAllUMKMQuery(Options$Query$GetAllUMKMQuery(
        variables: Variables$Query$GetAllUMKMQuery(
            where: Input$umkm_bool_exp(
                user_id: Input$uuid_comparison_exp($_eq: userId)))));
    final insertUMKM = useMutation$InsertUMKMMutation();
    final updateUMKM = useMutation$UpdateUMKMMutation();

    final tryInsertUMKM = useCallback(() async {
      try {
        if (!(formKey.currentState?.validate() ?? false)) {
          return false;
        }
        if (!(auth.currentUser?.roles.contains('umkm') ?? false)) {
          throw Exception("user doesn't have umkm role");
        }
        final listUMKM = getUMKM.result.parsedData?.umkm;
        if (listUMKM?.isNotEmpty ?? false) {
          Logger.talker.log("updating umkm");
          final umkm = getUMKM.result.parsedData?.umkm.first;
          if (umkm == null) {
            throw Exception('list umkm is not empty but first element is null');
          }
          final res = await updateUMKM
              .runMutation(Variables$Mutation$UpdateUMKMMutation(
                  user_id: userId,
                  data: Input$umkm_set_input(
                    umkm_name: umkm.umkm_name != umkmNameController.text
                        ? umkmNameController.text
                        : null,
                    umkm_desc: umkm.umkm_desc != umkmDescriptionController.text
                        ? umkmDescriptionController.text
                        : null,
                  )))
              .networkResult;

          if (res == null) {
            if (context.mounted) fallbackRedirect(context);
            throw Exception("response is null");
          }
          if (res.hasException == true) {
            Logger.talker.error("update umkm failed", res.exception);
          }
        } else {
          Logger.talker.log("updating umkm");
          final res = await insertUMKM
              .runMutation(Variables$Mutation$InsertUMKMMutation(
                  data: Input$umkm_insert_input(
                      umkm_name: umkmNameController.text,
                      umkm_desc: umkmDescriptionController.text,
                      umkm_performance: "",
                      umkm_shares: 0,
                      user_id: userId)))
              .networkResult;

          if (res == null) {
            if (context.mounted) fallbackRedirect(context);
            throw Exception("response is null");
          }
          if (res.hasException == true) {
            Logger.talker.error("insert umkm failed", res.exception);
          }
        }
        if (isRegister && context.mounted) goTo(context, '/dashboard');
      } on ApiException catch (err, st) {
        final decodedBody = const JsonDecoder().convert(err.response.body);
        final reasonPhrase =
            decodedBody["message"] != null ? ": ${decodedBody["message"]}" : "";
        Logger.talker.error("Failed to create UMKM", err, st);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
                'Terjadi kesalahan menyimpan UMKM (HTTP STATUS ${err.response.statusCode}$reasonPhrase)'),
          ),
        );
      } catch (err, st) {
        Logger.talker.error("Failed to create UMKM", err, st);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content:
                Text('Terjadi kesalahan menyimpan UMKM karena error internal'),
          ),
        );
      }
    }, [
      umkmNameController.text,
      umkmDescriptionController.text,
      userId,
      formKey
    ]);
    if (getUMKM.result.isConcrete) {
      final umkmList = getUMKM.result.parsedData?.umkm;
      if (umkmList != null && umkmList.isNotEmpty) {
        Logger.talker.log("displaying existing profile data");
        final umkm = umkmList.first;
        umkmNameController.text = umkm.umkm_name;
        umkmDescriptionController.text = umkm.umkm_desc;
      }
      if (!isRegister) {
        Future.delayed(Duration.zero, () {
          formKey.currentState?.validate();
        });
      }
      return Form(
        key: formKey,
        child: FocusTraversalGroup(
            policy: ReadingOrderTraversalPolicy(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: TextFormField(
                      controller: umkmNameController,
                      decoration: const InputDecoration(
                        labelText: 'Nama UMKM',
                        border: OutlineInputBorder(),
                      ),
                      autofocus: true,
                      onFieldSubmitted: (_) => tryInsertUMKM(),
                    )),
                Padding(
                    padding: const EdgeInsets.symmetric(vertical: 6),
                    child: TextFormField(
                      controller: umkmDescriptionController,
                      decoration: const InputDecoration(
                        labelText: 'Deskripsi UMKM',
                        border: OutlineInputBorder(),
                      ),
                      autofocus: true,
                      onFieldSubmitted: (_) => tryInsertUMKM(),
                    )),
                const SizedBox(height: 12),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => tryInsertUMKM(),
                  child: const Text('SIMPAN INFORMASI UMKM'),
                )
              ],
            )),
      );
    }
    return const Spinner();
  }
}
