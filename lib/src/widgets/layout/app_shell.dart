import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/auth.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/providers/auth/app_auth_state.dart';
import 'package:tubes_promvis_kelompok_8/src/routes.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/layout/app_navbar.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/spinner.dart';

class AppShell extends HookWidget {
  const AppShell({required this.child, super.key});
  final Widget child;

  @override
  Widget build(BuildContext context) {
    final appAuthState = Provider.of<AppAuthState>(context);
    final router = GoRouter.of(context);
    final routeParams = useMemoized(() {
      final path = router.routeInformationParser.configuration
          .findMatch(router.location)
          .fullPath;
      return AppRouter.routes
          .where((routeParam) => routeParam.path == path)
          .first;
    });
    late Widget child;
    if (isRouteAllowedAppAuthState(appAuthState, routeParams)) {
      child = this.child;
    } else if (isAuthLoadingAppAuthState(appAuthState)) {
      child = const Spinner();
    } else {
      Logger.talker.error("Bad authentication state", appAuthState);
      child = const Text("Authentication error in app shell");
    }
    return Scaffold(
        bottomNavigationBar: const AppNavbar(),
        body: TalkerWrapper(
          talker: Logger.talker,
          options: const TalkerWrapperOptions(
            enableErrorAlerts: true,
          ),
          child: child,
        ));
  }
}
