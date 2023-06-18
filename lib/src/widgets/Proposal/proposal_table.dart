import 'package:flutter/material.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/proposal.graphql.dart';

class ProposalTable extends StatelessWidget {
  final List<Fragment$proposalData>? listProposal;

  const ProposalTable({Key? key, this.listProposal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(8),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: DataTable(
                  columns: [
                    const DataColumn(
                        label: Text('UMKM')), // Column for "Date Created"
                    DataColumn(
                      label: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: const Text(
                          'Proposal Content',
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                  rows: listProposal?.map<DataRow>((proposal) {
                        return DataRow(
                          cells: [
                            DataCell(
                              Center(
                                child: Text(proposal.umkm_id.toString()),
                              ),
                            ),
                            DataCell(
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.6,
                                child:
                                    Text(proposal.proposal_content.toString()),
                              ),
                            ),
                          ],
                        );
                      }).toList() ??
                      [],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
