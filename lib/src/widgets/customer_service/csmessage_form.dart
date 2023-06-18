// Main imports
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/cs_message.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/schema.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/customer_service/csmessage_table.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/spinner.dart';

// Main widget
class CSForm extends HookWidget {
  CSForm({
    Key? key,
    required this.handleCancel,
    required this.handleContinue,
    required this.handleGoTo,
    required this.messageController,
  }) : super(key: key);

  final void Function() handleCancel;
  final void Function() handleContinue;
  final void Function(int index) handleGoTo;
  final TextEditingController messageController;
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final auth = NhostAuthProvider.of(context)!;
    final userId = auth.currentUser?.id;

    if (userId == null) {
      handleGoTo(0);
      return const SizedBox();
    }

    final sendMessage = useMutation$InsertCsMessageMutation();
    final getMessage = useQuery$GetAllCsMessageUserQuery(
      Options$Query$GetAllCsMessageUserQuery(
        variables: Variables$Query$GetAllCsMessageUserQuery(
          user_id: userId,
        ),
      ),
    );

    final isLoading = useState(false);
    final isFormSubmitted = useState(false);

    final trySendMessage = useCallback(() async {
      try {
        if (isFormSubmitted.value) {
          if (!(formKey.currentState?.validate() ?? false)) {
            return false;
          }
        }

        isLoading.value = true;

        final res = await sendMessage
            .runMutation(
              Variables$Mutation$InsertCsMessageMutation(
                data: Input$cs_message_insert_input(
                  cs_message_content: messageController.text,
                  user_id: userId,
                  cs_message_date: DateTime.now(),
                ),
              ),
            )
            .networkResult;

        if (res?.hasException == true) {
          Logger.talker.error("send message failed", res?.exception);
          throw Exception("Failed to send message");
        }

        messageController.clear();

        await getMessage.refetch();

        return true;
      } on ApiException catch (err, st) {
        final decodedBody = const JsonDecoder().convert(err.response.body);
        final reasonPhrase =
            decodedBody["message"] != null ? ": ${decodedBody["message"]}" : "";
        Logger.talker.error("Failed to send message", err, st);

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
              'Failed to send message (HTTP STATUS ${err.response.statusCode}$reasonPhrase)',
            ),
          ),
        );
      } catch (err, st) {
        Logger.talker.error("Failed to send message", err, st);

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Failed to send message due to internal error'),
          ),
        );

        handleCancel();
      } finally {
        isLoading.value = false;
      }
    }, [messageController, userId, formKey, isFormSubmitted.value, getMessage]);

    final listMessage = getMessage.result.parsedData?.cs_message;

    return Scaffold(
      body: ListView(
        physics: const ClampingScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40, left: 65, right: 65),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 8, bottom: 16),
                  child: Text(
                    'Contact Customer Service',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Form(
                  key: formKey,
                  child: TextFormField(
                    controller: messageController,
                    decoration: const InputDecoration(
                      labelText: 'Message',
                    ),
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.minLength(1),
                    ]),
                    onFieldSubmitted: (_) => trySendMessage(),
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
                            isFormSubmitted.value = true;
                            if (formKey.currentState?.validate() ?? false) {
                              trySendMessage();
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: 12),
                          ),
                          child: isLoading.value
                              ? const Spinner()
                              : const Text('Send'),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 80),
                CSMessageTable(listMessage: listMessage),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
