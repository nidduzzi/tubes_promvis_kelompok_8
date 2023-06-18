import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:provider/provider.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/auth.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/providers/auth/app_auth_state.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/proposal.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/ellipsis_text.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/proposal/proposal_approve_modal.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/proposal/proposal_details_modal.dart';

class ProposalTable extends HookWidget {
  final List<Query$GetAllProposalQuery$proposal> listProposal;
  final bool isApproval;
  final Future<void> Function() updateList;

  const ProposalTable(
      {super.key,
      this.listProposal = const [],
      required this.updateList,
      this.isApproval = false});
  final maxTextWidth = 200.0;

  @override
  Widget build(BuildContext context) {
    final width = min(MediaQuery.of(context).size.width * 0.4, maxTextWidth);
    final appAuthState = Provider.of<AppAuthState>(context);
    final isCSPlus = isCSPlusAppAuthState(appAuthState);

    return Center(
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(8),
        ),
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            physics: const ClampingScrollPhysics(),
            child: DataTable(
              columns: [
                const DataColumn(
                    label: Text('UMKM')), // Column for "Date Created"
                DataColumn(
                  label: SizedBox(
                    width: width,
                    child: const Text(
                      'Proposal Title',
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
                const DataColumn(label: Text('Actions')),
              ],
              rows: listProposal.map<DataRow>((proposal) {
                return DataRow(
                  cells: [
                    DataCell(
                      Center(
                        child: Text(proposal.umkm.umkm_name),
                      ),
                    ),
                    DataCell(
                      SizedBox(
                        child: EllipsisText(
                          text: proposal.proposal_title,
                          maxWidth: width,
                        ),
                      ),
                    ),
                    DataCell(
                      Row(
                        children: [
                          SizedBox(
                            child: ElevatedButton(
                              onPressed: () {
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      return ProposalDetailDialog(
                                        proposalId: proposal.proposal_id,
                                        proposalTitle: proposal.proposal_title,
                                        proposalAmount:
                                            proposal.proposal_amount,
                                        proposalContent:
                                            proposal.proposal_content,
                                        proposalDate: proposal.proposal_date,
                                      );
                                    });
                              },
                              child: const Text("Details"),
                            ),
                          ),
                          if (isCSPlus)
                            SizedBox(
                              child: ElevatedButton(
                                onPressed: !proposal.proposal_approved
                                    ? () {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return ProposalApprovalConfirmationDialog(
                                                proposalId:
                                                    proposal.proposal_id,
                                                proposalTitle:
                                                    proposal.proposal_title,
                                                onSuccess: () async {
                                                  await updateList();
                                                },
                                              );
                                            });
                                      }
                                    : null,
                                child: const Text("Approve"),
                              ),
                            )
                        ],
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
