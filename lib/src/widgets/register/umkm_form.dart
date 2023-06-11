import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/navigation.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/schema.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/umkm.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/types/register_page_type.dart';

class UMKMProfileForm extends HookWidget {
  UMKMProfileForm(
      {super.key,
      required this.handleCancel,
      required this.handleContinue,
      required this.handleGoTo});
  final void Function() handleCancel;
  final void Function() handleContinue;
  final void Function(int index) handleGoTo;
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
        final umkms = getUMKM.result.parsedData?.umkm;
        if (umkms != null && umkms.isNotEmpty) {
          Logger.talker.log("updating umkm");
          final res = await updateUMKM
              .runMutation(Variables$Mutation$UpdateUMKMMutation(
                  user_id: userId,
                  data: Input$umkm_set_input(
                      umkm_name: umkmNameController.text,
                      umkm_desc: umkmDescriptionController.text,
                      user_id: userId)))
              .networkResult;

          if (res == null) {
            goTo(context, '/register/${RegisterPageType.UMKM.toShortString()}');
            throw Exception("response is null");
          }
          if (res.hasException == true) {
            handleCancel();
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
            goTo(context, '/register/${RegisterPageType.UMKM.toShortString()}');
            throw Exception("response is null");
          }
          if (res.hasException == true) {
            handleCancel();
            Logger.talker.error("insert umkm failed", res.exception);
          }
        }
        goTo(context, '/dashboard');
      } on ApiException catch (err, st) {
        final decodedBody = const JsonDecoder().convert(err.response.body);
        final reasonPhrase =
            decodedBody["message"] != null ? ": ${decodedBody["message"]}" : "";
        Logger.talker.error("Failed to create UMKM", err, st);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
                'Tidak dapat membuat UMKM (HTTP STATUS ${err.response.statusCode}$reasonPhrase)'),
          ),
        );
      } catch (err, st) {
        Logger.talker.error("Failed to create UMKM", err, st);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Tidak dapat membuat UMKM karena error internal'),
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
      return Form(
        key: formKey,
        child: FocusTraversalGroup(
            policy: ReadingOrderTraversalPolicy(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: umkmNameController,
                  decoration: const InputDecoration(
                    labelText: 'Nama UMKM',
                    border: OutlineInputBorder(),
                  ),
                  autofocus: true,
                  onFieldSubmitted: (_) => tryInsertUMKM(),
                ),
                TextFormField(
                  controller: umkmDescriptionController,
                  decoration: const InputDecoration(
                    labelText: 'Deskripsi UMKM',
                    border: OutlineInputBorder(),
                  ),
                  autofocus: true,
                  onFieldSubmitted: (_) => tryInsertUMKM(),
                ),
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
    return const CircularProgressIndicator.adaptive();
  }
}
