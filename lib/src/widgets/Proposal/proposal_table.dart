import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ProposalTable extends StatelessWidget {
  final List<dynamic>? listProposal;

  const ProposalTable({Key? key, this.listProposal}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dateFormat = DateFormat.yMd(); // Date format for displaying dates

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
                    const DataColumn(label: Text('UMKM')), // Column for "Date Created"
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
                  rows: listProposal?.map<DataRow>((Proposal) {
                    return DataRow(
                      cells: [
                        DataCell(
                          Center(
                            child: Text(Proposal.umkm_id.toString()),
                          ),
                        ),
                        DataCell(
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.6,
                            child: Text(Proposal.proposal_content.toString()),
                          ),
                        ),
                      ],
                    );
                  }).toList() ?? [],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
