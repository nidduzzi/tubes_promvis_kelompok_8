import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/auth.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/navigation.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/providers/auth/app_auth_state.dart';
import 'package:tubes_promvis_kelompok_8/src/routes.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/spinner.dart';

class PortofolioPage extends HookWidget {
  const PortofolioPage({super.key});

  static const routeName = '/portofolio';

  @override
  Widget build(BuildContext context) {
    final appAuthState = Provider.of<AppAuthState>(context);
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Text('Portofolio'),
                if (isUMKMAppAuthState(appAuthState) || isCSPlus(context))
                  ElevatedButton(
                    onPressed: () =>
                        goToNamed(context, 'create proposal', push: true),
                    child: const Text('Create Proposal'),
                  ),
                if (isSignedInAppAuthState(appAuthState))
                  ElevatedButton(
                    onPressed: () =>
                        goToNamed(context, 'view proposal', push: true),
                    child: const Text('View Proposals'),
                  ),
                if (isCustomer(context))
                  ElevatedButton(
                    onPressed: () => goTo(context, '/customer_service'),
                    child: const Text('CS Message'),
                  ),
                if (isCSPlus(context))
                  ElevatedButton(
                    onPressed: () => goTo(context, '/customer_message'),
                    child: const Text('CS Message'),
                  ),
              ]
                  .map((e) => Padding(
                        padding: const EdgeInsets.all(16),
                        child: e,
                      ))
                  .toList(),
            ),
          ));
    } else if (isAuthLoadingAppAuthState(appAuthState)) {
      return const Spinner();
    } else {
      Logger.talker.error("Bad authentication state", appAuthState);
      return const Text("Authentication error in portofolio");
    }
  }
}
