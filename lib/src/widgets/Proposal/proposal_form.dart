import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/proposal.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/schema.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/umkm.graphql.dart';
import 'package:flutter_quill/flutter_quill.dart' hide Text;

class ProposalForm extends HookWidget {
  ProposalForm({
    Key? key,
    required this.handleCancel,
    required this.handleContinue,
    required this.handleGoTo,
  }) : super(key: key);

  final void Function() handleCancel;
  final void Function() handleContinue;
  final void Function(int index) handleGoTo;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final QuillController quillController = QuillController.basic();

  @override
  Widget build(BuildContext context) {
    final auth = NhostAuthProvider.of(context)!;
    final userId = auth.currentUser?.id;

    if (userId == null) {
      handleGoTo(0);
      return const SizedBox();
    }

    final amountController = useTextEditingController();
    final titleController = useTextEditingController();

    final sendProposal = useMutation$InsertProposalMutation();

    final getUMKM = useQuery$GetAllUMKMQuery(
      Options$Query$GetAllUMKMQuery(
        variables: Variables$Query$GetAllUMKMQuery(
          where: Input$umkm_bool_exp(
            user_id: Input$uuid_comparison_exp($_eq: userId),
          ),
        ),
      ),
    );
    final listUMKM = getUMKM.result.parsedData?.umkm;
    final umkmId =
        listUMKM?.isNotEmpty == true ? listUMKM!.first.umkm_id : null;

    final getProposal = useQuery$GetAllProposalQuery(
      Options$Query$GetAllProposalQuery(
        variables: Variables$Query$GetAllProposalQuery(
          where: Input$proposal_bool_exp(
            umkm_id: Input$Int_comparison_exp($_eq: umkmId),
          ),
        ),
      ),
    );
    final listProposal = getProposal.result.parsedData?.proposal;
    final proposalAmount = listProposal?.isNotEmpty == true
        ? listProposal!.last.proposal_amount
        : 0;

    final isLoading = useState(false);
    final isFormSubmitted = useState(false);

    final trySendProposal = useCallback(() async {
      try {
        if (isFormSubmitted.value) {
          if (!(formKey.currentState?.validate() ?? false)) {
            return false;
          }
        }

        isLoading.value = true;

        final messageContent =
            jsonEncode(quillController.document.toDelta().toJson());
        if (messageContent.isEmpty) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Proposal content cannot be empty'),
            ),
          );
          return false;
        }

        final res = await sendProposal
            .runMutation(
              Variables$Mutation$InsertProposalMutation(
                data: Input$proposal_insert_input(
                  proposal_content: messageContent,
                  proposal_title: titleController.text,
                  umkm_id: umkmId,
                  proposal_amount: int.parse(amountController.text),
                  proposal_date: DateTime.now(),
                ),
              ),
            )
            .networkResult;

        if (res?.hasException == true) {
          Logger.talker.error("send proposal failed", res?.exception);
          throw Exception("Failed to send proposal");
        }

        quillController.clear();

        getProposal.refetch();
        getUMKM.refetch();

        return true;
      } on ApiException catch (err, st) {
        final decodedBody = const JsonDecoder().convert(err.response.body);
        final reasonPhrase = decodedBody["proposal"] != null
            ? ": ${decodedBody["proposal"]}"
            : "";
        Logger.talker.error("Failed to send proposal", err, st);

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Failed to send proposal (HTTP STATUS ${err.response.statusCode}$reasonPhrase)',
            ),
          ),
        );
      } catch (err, st) {
        Logger.talker.error("Failed to send proposal", err, st);

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Failed to send proposal due to internal error'),
          ),
        );

        handleCancel();
      } finally {
        isLoading.value = false;
      }
    }, [
      quillController,
      userId,
      formKey,
      isFormSubmitted.value,
      getProposal,
      getUMKM,
      proposalAmount
    ]);

    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 65, right: 65),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 16),
                  child: Text(
                    'Submit Proposal',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: TextFormField(
                          controller: titleController,
                          decoration: const InputDecoration(
                            labelText: 'Title',
                            border: OutlineInputBorder(),
                          ),
                          autofocus: true,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter a title';
                            }
                            return null;
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        child: TextFormField(
                          controller: amountController,
                          decoration: const InputDecoration(
                            labelText: "Amount",
                            border: OutlineInputBorder(),
                          ),
                          keyboardType: TextInputType.number,
                          autofocus: true,
                          validator: FormBuilderValidators.compose([
                            FormBuilderValidators.required(),
                          ]),
                          inputFormatters: <TextInputFormatter>[
                            FilteringTextInputFormatter.digitsOnly
                          ],
                        ),
                      ),
                      QuillToolbar.basic(
                        controller: quillController,
                      ),
                      const SizedBox(height: 16),
                      QuillEditor(
                        controller: quillController,
                        scrollController: ScrollController(),
                        scrollable: true,
                        autoFocus: true,
                        focusNode: FocusNode(),
                        readOnly: false,
                        placeholder: 'Proposal Content',
                        expands: false,
                        padding: const EdgeInsets.all(0),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: handleCancel,
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                          ),
                          child: const Text('Cancel'),
                        ),
                        const SizedBox(width: 16),
                        ElevatedButton(
                          onPressed: () {
                            if (!quillController.document.isEmpty()) {
                              trySendProposal();
                            } else {
                              Logger.talker
                                  .log(quillController.document.root.children);
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                  content:
                                      Text('Proposal content cannot be empty'),
                                ),
                              );
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                          ),
                          child: isLoading.value
                              ? const CircularProgressIndicator()
                              : const Text('Submit'),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 80),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
