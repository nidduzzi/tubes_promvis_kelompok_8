import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/types/profile_type.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/stateful_wrapper.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  static const routeName = '/dashboard';

  void testContext() {
    // final ctx = useContext();
    // final auth = NhostAuthProvider.of(ctx)!;
    // final currentUser = auth.currentUser!;
    // Logger.talker.log(currentUser);
    // final client = useGraphQLClient();
    // Logger.talker.log(client.query(QueryOptions(document: getProfileQuery)));
    Logger.talker.log('dashboard');
  }

  @override
  Widget build(BuildContext context) {
    final auth = NhostAuthProvider.of(context)!;
    final currentUser = auth.currentUser;

    return StatefulWrapper(
        onInit: () {
          testContext();
        },
        child: Padding(
            padding: const EdgeInsets.all(16),
            child: Query(
                options: QueryOptions(document: getProfileQuery),
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
                  final Profile? profile =
                      (result.data!['profile'] as List).isNotEmpty
                          ? Profile.fromJson(result.data!['profile'][0])
                          : null;

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
