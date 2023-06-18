import 'package:flutter/material.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/proposal.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/umkm.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/Proposal/proposal_table.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/customer_service/csmessage_table.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/cs_message.graphql.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class ViewProposalQueryWidget extends HookWidget {

  @override
  Widget build(BuildContext context) {
    final getProposal = useQuery$GetAllProposalQuery(
      Options$Query$GetAllProposalQuery(
        variables: Variables$Query$GetAllProposalQuery(),
      ),
    );

    final listProposal = getProposal.result.parsedData?.proposal;

    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 8, bottom: 16),
          child: Text(
            "UMKM's Proposal",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ProposalTable(listProposal: listProposal), // Display the CSMessageTable widget
      ],
    );
  }
}

class ViewProposalPage extends StatelessWidget {
  const ViewProposalPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 55, right: 55, top: 100, bottom: 100),
        child: ViewProposalQueryWidget(), // Pass the userId to the ViewProposalQueryWidget
      ),
    );
  }
}
