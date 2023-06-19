import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/navigation.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/bank_card.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/investment.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/investor.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/payment_investment.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/proposal.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/schema.graphql.dart';

class InvestmentForm extends HookWidget {
  final Fragment$investorData investor;
  final Fragment$proposalData proposal;
  final List<Fragment$bankCardData> bankCards;
  final void Function() doneCallback;

  const InvestmentForm({
    super.key,
    required this.investor,
    required this.proposal,
    required this.bankCards,
    required this.doneCallback,
  });

  @override
  Widget build(BuildContext context) {
    final amountController = useTextEditingController();
    final selectedBankCardId = useState<String?>(null);
    final formKey = useMemoized(() => GlobalKey<FormState>());
    final investmentInsert = useMutation$InsertInvestmentMutation(
        WidgetOptions$Mutation$InsertInvestmentMutation());
    final paymentInsert = useMutation$InsertPaymentInvestmentMutation(
        WidgetOptions$Mutation$InsertPaymentInvestmentMutation());
    final paymentUpdate = useMutation$UpdatePaymentInvestmentMutation(
        WidgetOptions$Mutation$UpdatePaymentInvestmentMutation());

    void submitInvestment(BuildContext context) async {
      if (formKey.currentState!.validate()) {
        try {
          // create investment
          final int amount = int.parse(amountController.text);
          final int proposalId = proposal.proposal_id;
          final resInvestment = await investmentInsert
              .runMutation(Variables$Mutation$InsertInvestmentMutation(
                  data: Input$investment_insert_input(
                investment_amount: amount,
                investor_id: investor.investor_id,
                proposal_id: proposalId,
              )))
              .networkResult;
          // create payment investment
          final investment = resInvestment?.parsedData?.insert_investment_one;

          if (investment == null) {
            throw Exception(
                "investment response after insert is null in investment form");
          }

          final bankCard = bankCards
              .where(
                  (element) => element.bank_card_id == selectedBankCardId.value)
              .first;
          final resPaymentInsert = await paymentInsert
              .runMutation(Variables$Mutation$InsertPaymentInvestmentMutation(
                  data: Input$payment_investment_insert_input(
                      investment_id: investment.investment_id)))
              .networkResult;

          final payment =
              resPaymentInsert?.parsedData?.insert_payment_investment_one;

          if (payment == null) {
            if (resPaymentInsert?.hasException ?? false) {
              throw resPaymentInsert?.exception ??
                  Exception("resPaymentInsert has exception");
            } else {
              throw Exception(
                  "payment response after insert is null in investment form");
            }
          }

          final resPaymentUpdate = await paymentUpdate
              .runMutation(Variables$Mutation$UpdatePaymentInvestmentMutation(
                  payment_investment_id: payment.payment_investment_id,
                  data: Input$payment_investment_set_input(
                      bank_card_id: bankCard.bank_card_id,
                      payment_investment_fulfilled: true)))
              .networkResult;
          final paymentUpdateResult =
              resPaymentUpdate?.parsedData?.update_payment_investment;
          if (paymentUpdateResult == null) {
            if (resPaymentInsert?.hasException ?? false) {
              throw resPaymentInsert?.exception ??
                  Exception("resPaymentInsert has exception");
            } else {
              throw Exception(
                  "payment response after update is null in investment form");
            }
          }
          doneCallback();
        } on ApiException catch (err) {
          Logger.talker.error(err);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                  'Create investment failed (${err.statusCode}: ${err.responseBody['message'] ?? ''})'),
            ),
          );
        } catch (err, st) {
          Logger.talker.error(err, st);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Create investment failed due to internal error'),
            ),
          );
        }
      }
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Investment'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Proposal ID: ${proposal.proposal_id}',
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              Text(
                'Proposal Title: ${proposal.proposal_title}',
                style: const TextStyle(fontSize: 16),
              ),
              const SizedBox(height: 20),
              TextFormField(
                controller: amountController,
                decoration: const InputDecoration(
                  labelText: 'Investment Amount',
                ),
                keyboardType: TextInputType.number,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter the investment amount.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              DropdownButtonFormField<String>(
                hint: const Text("Select a card"),
                value: selectedBankCardId.value,
                onChanged: (String? newValue) {
                  selectedBankCardId.value = newValue!;
                },
                items: bankCards.map((card) {
                  return DropdownMenuItem(
                    value: card.bank_card_id,
                    child: Text(card.bank_card_number),
                  );
                }).toList(),
                decoration: const InputDecoration(
                  labelText: 'Bank Card',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please select a bank card.';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => submitInvestment(context),
                child: const Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
