import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/navigation.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/investor.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/schema.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/spinner.dart';

class InvestorProfileForm extends HookWidget {
  InvestorProfileForm(
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
    final investorNameController = useTextEditingController();
    final getInvestor = useQuery$GetAllInvestorQuery(
        Options$Query$GetAllInvestorQuery(
            variables: Variables$Query$GetAllInvestorQuery(
                where: Input$investor_bool_exp(
                    user_id: Input$uuid_comparison_exp($_eq: userId)))));
    final insertInvestor = useMutation$InsertInvestorMutation();
    final updateInvestor = useMutation$UpdateInvestorMutation();

    final tryInsertInvestor = useCallback(() async {
      try {
        if (!(formKey.currentState?.validate() ?? false)) {
          return false;
        }
        if (!(auth.currentUser?.roles.contains('investor') ?? false)) {
          throw Exception("user doesn't have investor role");
        }
        final listInvestor = getInvestor.result.parsedData?.investor;
        if (listInvestor?.isNotEmpty ?? false) {
          Logger.talker.log("updating investor");
          final investor = getInvestor.result.parsedData?.investor.first;
          if (investor == null) {
            throw Exception(
                'list investor is not empty but first element is null');
          }
          final res = await updateInvestor
              .runMutation(Variables$Mutation$UpdateInvestorMutation(
                  user_id: userId,
                  data: Input$investor_set_input(
                    investor_name:
                        (investor.investor_name != investorNameController.text
                            ? investorNameController.text
                            : null),
                  )))
              .networkResult;

          if (res == null) {
            if (context.mounted) fallbackRedirect(context);
            throw Exception("response is null");
          }
          if (res.hasException == true) {
            Logger.talker.error("update investor failed", res.exception);
          }
        } else {
          Logger.talker.log("creating investor");
          final res = await insertInvestor
              .runMutation(Variables$Mutation$InsertInvestorMutation(
                  data: Input$investor_insert_input(
                      investor_name: investorNameController.text,
                      investor_investment_amount: 0,
                      user_id: userId)))
              .networkResult;
          if (res == null) {
            if (context.mounted) fallbackRedirect(context);
            throw Exception("response is null");
          }
          if (res.hasException == true) {
            Logger.talker.error("insert investor failed", res.exception);
          }
        }
        if (isRegister && context.mounted) goTo(context, '/dashboard');
      } on ApiException catch (err, st) {
        final decodedBody = const JsonDecoder().convert(err.response.body);
        final reasonPhrase =
            decodedBody["message"] != null ? ": ${decodedBody["message"]}" : "";
        Logger.talker.error("Failed to create Investor ", err, st);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
                'Terjadi kesalahan menyimpan Investor  (HTTP STATUS ${err.response.statusCode}$reasonPhrase)'),
          ),
        );
      } catch (err, st) {
        Logger.talker.error("Failed to create Investor ", err, st);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text(
                'Terjadi kesalahan menyimpan Investor due to internal error'),
          ),
        );
      }
    }, [investorNameController.text, userId, formKey]);

    if (getInvestor.result.isConcrete) {
      final investorList = getInvestor.result.parsedData?.investor;
      if (investorList != null && investorList.isNotEmpty) {
        Logger.talker.log("displaying existing investor data");
        final investor = investorList.first;
        investorNameController.text = investor.investor_name;
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
                    controller: investorNameController,
                    decoration: const InputDecoration(
                      labelText: 'Nama Investor',
                      border: OutlineInputBorder(),
                    ),
                    autofocus: true,
                    onFieldSubmitted: (_) => tryInsertInvestor(),
                  ),
                ),
                const SizedBox(height: 12),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => tryInsertInvestor(),
                  child: const Text('SIMPAN INVESTOR'),
                )
              ],
            )),
      );
    }
    return const Spinner();
  }
}
