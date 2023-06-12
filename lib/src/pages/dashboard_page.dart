import 'package:flutter/material.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/schema.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/stateful_wrapper.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/profile.graphql.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  static const routeName = '/dashboard';

  @override
  Widget build(BuildContext context) {
    final auth = NhostAuthProvider.of(context)!;
    final currentUser = auth.currentUser;

    return StatefulWrapper(
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: Query$GetAllProfileQuery$Widget(
                options: Options$Query$GetAllProfileQuery(
                    variables: Variables$Query$GetAllProfileQuery(
                        where: Input$profile_bool_exp(
                            user_id: Input$uuid_comparison_exp(
                                $_eq: currentUser?.id)))),
                builder: (result, {fetchMore, refetch}) {
                  if (result.isLoading) return const Text('Loading…');
                  if (!result.isConcrete) return const SizedBox();
                  if (result.hasException) {
                    Logger.talker.error("print exception", result.exception);
                    return const Text(
                        'Error encountered while loading dashboard. Did you setup '
                        'your backend using the quick-start at '
                        'https://docs.nhost.io?');
                  }
                  final profile = result.parsedData?.profile.first;

                  return Column(children: [
                    Text("Name: ${currentUser?.displayName}"),
                    Text("Email: ${currentUser?.email}"),
                    if (profile != null)
                      Text("First Name: ${profile.profile_first_name}"),
                    if (profile != null)
                      Text("Last Name: ${profile.profile_last_name}"),
                  ]);
                })));
  }
}
