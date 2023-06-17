import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/auth.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/cs_message.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/layout/app_header.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/spinner.dart';

class CSMessageAdminPage extends HookWidget {
  const CSMessageAdminPage({super.key});

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
    if (!(isCSPlus(context))) {
      throw Exception("user does not have cs or admin role");
    }

    final getMessages = useQuery$GetAllCsMessageAgentQuery(
        Options$Query$GetAllCsMessageAgentQuery(
            variables: Variables$Query$GetAllCsMessageAgentQuery(
                cs_agent_user_id: user.id)));
    final result = getMessages.result;
    return Builder(builder: (context) {
      if (result.isConcrete) {
        return ListView.builder(
          itemCount: result.parsedData?.cs_message.length ?? 0,
          itemBuilder: (context, index) {
            final message = result.parsedData?.cs_message[index];
            return ListTile(
              title: Text(message?.cs_message_content ?? ""),
              subtitle: Text(message?.cs_message_date.toIso8601String() ?? ""),
            );
          },
        );
      } else {
        return const Spinner();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return AppHeader(title: "Admin Page", child: _pageBuild(context));
  }
}
