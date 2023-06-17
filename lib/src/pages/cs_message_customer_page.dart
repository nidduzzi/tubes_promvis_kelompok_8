import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/auth.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/cs_message.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/schema.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/layout/app_header.dart';

class CSMessageCustomerPage extends HookWidget {
  const CSMessageCustomerPage({super.key});

  Widget _pageBuild(BuildContext context) {
    final auth = NhostAuthProvider.of(context);
    if (auth == null) {
      throw Exception('auth is null in cs message page');
    }
    if (!isSignedIn(context)) {
      throw Exception('user is not signed in to view cs message page');
    }
    final user = auth.currentUser;
    if (user == null) throw Exception('user is empty in cs message page');
    if (!(isCustomer(context))) {
      throw Exception("user does not have cs or admin role");
    }

    final TextEditingController messageController =
        useTextEditingController(text: "");
    final insertMessage = useMutation$InsertCsMessageMutation(
        WidgetOptions$Mutation$InsertCsMessageMutation());

    final sendMessage = useCallback(() async {
      final messageContent = messageController.text;
      if (messageContent.isNotEmpty) {
        try {
          final res = await insertMessage
              .runMutation(Variables$Mutation$InsertCsMessageMutation(
                  data: Input$cs_message_insert_input(
                      cs_message_content: messageContent)))
              .networkResult;
          if (res == null) {
            throw Exception("response is null");
          }
          if (res.hasException == true) {
            Logger.talker.error("update investor failed", res.exception);
            if (context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Failed to send message')),
              );
            }
          } else {
            if (context.mounted) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Message sent successfully')),
              );
            }
            messageController.clear();
          }
        } catch (error) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Failed to send message')),
          );
        }
      }
    }, []);

    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: messageController,
            decoration: const InputDecoration(
              labelText: 'Message',
            ),
          ),
          const SizedBox(height: 16.0),
          ElevatedButton(
            onPressed: sendMessage,
            child: const Text('Send Message'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppHeader(
      title: "Customer Page",
      child: _pageBuild(context),
    );
  }
}
