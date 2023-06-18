import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/auth.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/investment.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/spinner.dart';

class InvestorStatisticsCard extends HookWidget {
  const InvestorStatisticsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = NhostAuthProvider.of(context);
    if (auth == null) {
      throw Exception('auth is null in summary widget');
    }
    if (!isSignedIn(context)) {
      throw Exception('user is not signed in to view statistics card');
    }
    final user = auth.currentUser;
    if (user == null) throw Exception('user is empty in umkm statistics');

    // final getUMKM = useQuery$GetUser

    final getInvestmentAggregate = useQuery$GetUserInvestmentAggregate(
        Options$Query$GetUserInvestmentAggregate(
            variables:
                Variables$Query$GetUserInvestmentAggregate(user_id: user.id)));
    final result = getInvestmentAggregate.result;

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          [
            const Text("No. Investments"),
            Builder(
              builder: (context) {
                if (result.isConcrete) {
                  return Text(result
                          .parsedData?.investment_aggregate.aggregate?.count
                          .toString() ??
                      " 0");
                } else {
                  return const Spinner();
                }
              },
            )
          ],
          [
            const Text("Total Funded"),
            Builder(
              builder: (context) {
                if (result.isConcrete) {
                  return Text(result.parsedData?.investment_aggregate.aggregate
                          ?.sum?.investment_amount
                          ?.toString() ??
                      " 0");
                } else {
                  return const Spinner();
                }
              },
            )
          ],
        ]
            .map((e) => Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.max,
                      children: e),
                ))
            .toList(),
      )),
    );
  }
}
