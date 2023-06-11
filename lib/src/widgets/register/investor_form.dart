import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/navigation.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/investor.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/schema.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/types/register_page_type.dart';

class InvestorProfileForm extends HookWidget {
  InvestorProfileForm(
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
        final investors = getInvestor.result.parsedData?.investor;
        if (investors != null && investors.isNotEmpty) {
          Logger.talker.log("updating investor");
          final res = await updateInvestor
              .runMutation(Variables$Mutation$UpdateInvestorMutation(
                  user_id: userId,
                  data: Input$investor_set_input(
                    investor_name: investorNameController.text,
                    investor_investment_amount: 0,
                  )))
              .networkResult;

          if (res?.hasException == true) {
            handleCancel();
            Logger.talker.error("update investor failed", res?.exception);
          }
          if (res == null) {
            goTo(context,
                '/register/${RegisterPageType.Investor.toShortString()}');
            throw Exception("response is null");
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

          if (res?.hasException == true) {
            handleCancel();
            Logger.talker.error("insert investor failed", res?.exception);
          }
          if (res == null) {
            goTo(context,
                '/register/${RegisterPageType.Investor.toShortString()}');
            throw Exception("response is null");
          }
        }
        goTo(context, '/dashboard');
      } on ApiException catch (err, st) {
        final decodedBody = const JsonDecoder().convert(err.response.body);
        final reasonPhrase =
            decodedBody["message"] != null ? ": ${decodedBody["message"]}" : "";
        Logger.talker.error("Failed to create Investor ", err, st);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
                'Failed to create Investor  (HTTP STATUS ${err.response.statusCode}$reasonPhrase)'),
          ),
        );
      } catch (err, st) {
        Logger.talker.error("Failed to create Investor ", err, st);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Failed to create Investor  due to internal error'),
          ),
        );
      }
    }, [investorNameController.text, userId, formKey]);

    if (getInvestor.result.isConcrete) {
      final umkmList = getInvestor.result.parsedData?.investor;
      if (umkmList != null && umkmList.isNotEmpty) {
        Logger.talker.log("displaying existing profile data");
        final umkm = umkmList.first;
        investorNameController.text = umkm.investor_name;
      }
      return Form(
        key: formKey,
        child: FocusTraversalGroup(
            policy: ReadingOrderTraversalPolicy(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
                  controller: investorNameController,
                  decoration: const InputDecoration(
                    labelText: 'Nama Investor',
                    border: OutlineInputBorder(),
                  ),
                  autofocus: true,
                  onFieldSubmitted: (_) => tryInsertInvestor(),
                ),
                const SizedBox(height: 12),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => tryInsertInvestor(),
                  child: const Text('SIMPAN INFORMASI INVESTOR'),
                )
              ],
            )),
      );
    }
    return const CircularProgressIndicator.adaptive();
  }
}
