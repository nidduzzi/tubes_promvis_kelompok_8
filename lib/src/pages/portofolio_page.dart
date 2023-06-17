import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/auth.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/providers/auth/app_auth_state.dart';
import 'package:tubes_promvis_kelompok_8/src/routes.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/schema.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/profile.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/spinner.dart';

class PortofolioPage extends HookWidget {
  const PortofolioPage({super.key});

  static const routeName = '/portofolio';

  @override
  Widget build(BuildContext context) {
    final appAuthState = Provider.of<AppAuthState>(context);
    final auth = appAuthState.nhostClient.auth;
    final user = auth.currentUser;
    Logger.talker.log("in portofolio page");
    final router = GoRouter.of(context);
    final routeParams = useMemoized(() {
      final path = router.routeInformationParser.configuration
          .findMatch(router.location)
          .fullPath;
      return AppRouter.routes
          .where((routeParam) => routeParam.path == path)
          .first;
    });

    if (isRouteAllowedAppAuthState(appAuthState, routeParams)) {
      return Padding(
          padding: const EdgeInsets.all(16),
          child: Query$GetAllProfileQuery$Widget(
              options: Options$Query$GetAllProfileQuery(
                  variables: Variables$Query$GetAllProfileQuery(
                      where: Input$profile_bool_exp(
                          user_id: Input$uuid_comparison_exp($_eq: user?.id)))),
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
                final profileList = result.parsedData?.profile;
                if (profileList?.isNotEmpty ?? false) {
                  final profile = profileList?.first;

                  return Column(children: [
                    Text("Name: ${user?.displayName}"),
                    Text("Email: ${user?.email}"),
                    if (profile != null)
                      Text("First Name: ${profile.profile_first_name}"),
                    if (profile != null)
                      Text("Last Name: ${profile.profile_last_name}"),
                  ]);
                } else {
                  return const SizedBox();
                }
              }));
    } else if (isAuthLoadingAppAuthState(appAuthState)) {
      return const Spinner();
    } else {
      Logger.talker.error("Bad authentication state", appAuthState);
      return const Text("Authentication error in portofolio");
    }
  }
}
