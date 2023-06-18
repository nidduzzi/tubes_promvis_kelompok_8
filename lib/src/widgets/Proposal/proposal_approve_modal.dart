import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/proposal.graphql.dart';

class ProposalApprovalConfirmationDialog extends HookWidget {
  final int proposalId;
  final String proposalTitle;
  final Function() onSuccess;

  const ProposalApprovalConfirmationDialog({
    super.key,
    required this.proposalId,
    required this.proposalTitle,
    required this.onSuccess,
  });

  @override
  Widget build(BuildContext context) {
    final proposalApprove = useMutation$ApproveProposalMutation(
        WidgetOptions$Mutation$ApproveProposalMutation());
    final approveProposal = useCallback((BuildContext context) async {
      try {
        // Handle the approval action
        // You can make an API call here or perform any other asynchronous logic
        // For example, you can await the API call to complete before going back
        final res = await proposalApprove
            .runMutation(Variables$Mutation$ApproveProposalMutation(
                proposal_id: proposalId))
            .networkResult;

        // Once the approval is done, navigate back to the previous page using go_router's context.goBack()

        if (context.mounted && !(res?.hasException ?? true)) {
          onSuccess();
          // return back(context);
        }

        Logger.talker.log(res?.exception);
        Logger.talker.log(res);
      } on ApiException catch (err) {
        Logger.talker.error(err);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
                'Approval Failed (${err.statusCode}: ${err.responseBody['message'] ?? ''})'),
          ),
        );
      } catch (err, st) {
        Logger.talker.error(err, st);
      }
    }, []);

    return AlertDialog(
      title: const Text('Confirmation'),
      content: const Text('Are you sure you want to approve the proposal?'),
      actions: <Widget>[
        TextButton(
          child: const Text('Cancel'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        TextButton(
          child: const Text('Confirm'),
          onPressed: () {
            // Perform the approval action (you can customize this part based on your requirements)
            // ...
            approveProposal(context)
                .then((value) => Navigator.of(context).pop());
            // Close the modal

            // Update the UI or perform any additional actions
            // ...
          },
        ),
      ],
    );
  }
}
