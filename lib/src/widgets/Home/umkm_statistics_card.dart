import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/auth.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/proposal.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/spinner.dart';

class UMKMStatisticsCard extends HookWidget {
  const UMKMStatisticsCard({super.key});

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

    final getProposalAggregate = useQuery$GetAllProposalAggregate(
        Options$Query$GetAllProposalAggregate(
            variables: Variables$Query$GetAllProposalAggregate()));
    final result = getProposalAggregate.result;

    Logger.talker.log(result.parsedData);
    Logger.talker.log(result
        .parsedData?.investment_aggregate.aggregate?.sum?.investment_amount);

    return Padding(
      padding: const EdgeInsets.all(10),
      child: Card(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          [
            const Text("No. Proposals"),
            if (result.isConcrete)
              Text(result.parsedData?.proposal_aggregate.aggregate?.count
                      .toString() ??
                  " 0")
            else
              const Spinner(),
          ],
          [
            const Text("Total Funded"),
            if (result.isConcrete)
              Text(result.parsedData?.investment_aggregate.aggregate?.sum
                      ?.investment_amount
                      ?.toString() ??
                  " 0")
            else
              const Spinner(),
          ],
          [
            const Text("To be Funded"),
            if (result.isConcrete)
              Builder(
                builder: (context) {
                  final sumNeeded = result.parsedData?.proposal_aggregate
                      .aggregate?.sum?.proposal_amount;
                  final sumFunded = result.parsedData?.investment_aggregate
                      .aggregate?.sum?.investment_amount;
                  if (sumFunded == null || sumNeeded == null) {
                    return const Text(" 0");
                  }
                  return Text((sumNeeded - sumFunded).toString());
                },
              )
            else
              const Spinner(),
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
