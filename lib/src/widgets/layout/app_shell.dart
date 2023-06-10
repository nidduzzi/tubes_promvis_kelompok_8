import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/navigation.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/providers/settings/settings_controller.dart';
import 'package:tubes_promvis_kelompok_8/src/routes.dart';
import 'package:tubes_promvis_kelompok_8/src/types/route_params_type.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/layout/app_navbar.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/navbar.dart';

class AppShell extends StatefulWidget {
  const AppShell(
      {required this.child, required this.settingsController, super.key});
  final Widget child;
  final SettingsController settingsController;

  @override
  State<StatefulWidget> createState() {
    return AppShellState();
  }
}

class AppShellState extends State<AppShell> {
  final List<RouteNavbarParams> routeData = [
    RouteNavbarParams(
        icon: Icons.home,
        label: 'Home',
        path: '/',
        title: 'Home',
        private: false,
        publicOnly: false),
    RouteNavbarParams(
        icon: Icons.dashboard,
        label: 'Dashboard',
        path: '/dashboard',
        title: 'Dashboard',
        private: true,
        publicOnly: false),
    RouteNavbarParams(
        icon: Icons.business,
        label: 'Daftar Sebagai UMKM',
        path: '/register/UMKM',
        title: 'Register UMKM',
        private: false,
        publicOnly: true),
    RouteNavbarParams(
        icon: Icons.person,
        label: 'Daftar Sebagai Investor',
        path: '/register/Investor',
        title: 'Register Investor',
        private: false,
        publicOnly: true),
    RouteNavbarParams(
        icon: Icons.pages,
        label: 'Blog',
        path: '/blog',
        title: 'Blog',
        private: false,
        publicOnly: false),
    RouteNavbarParams(
        icon: Icons.login,
        label: 'Login',
        path: '/login',
        title: 'Login',
        private: false,
        publicOnly: true),
    RouteNavbarParams(
        icon: Icons.logout,
        label: 'Logout',
        path: '/logout',
        title: 'Logout',
        private: true,
        publicOnly: false),
    RouteNavbarParams(
        icon: Icons.settings,
        label: 'Settings',
        path: '/settings',
        title: 'Settings',
        private: false,
        publicOnly: false),
  ];

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final int? selectedIndex = getCurrentIndex(context, routeData);
    final auth = NhostAuthProvider.of(context);
    final location = GoRouter.of(context).location;
    late Widget child;
    switch (auth?.authenticationState) {
      case AuthenticationState.signedIn:
        child = widget.child;
        break;
      case AuthenticationState.signedOut:
        final locationRoute =
            AppRouter.routes.where((element) => element.path == location);
        if (locationRoute.isNotEmpty && locationRoute.first.private) {
          child = const CircularProgressIndicator();
          goTo(context, '/login');
        } else {
          child = widget.child;
        }
        break;
      case AuthenticationState.inProgress:
        child = const CircularProgressIndicator();
        break;
      default:
        child = const Text("undetermined authentication state");
    }
    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: Text(
              selectedIndex != null ? routeData[selectedIndex].title : "App"),
        ),
        drawer: Drawer(
          child: AppNavbar(
              routeData: routeData,
              scaffoldKey: scaffoldKey,
              settingsController: widget.settingsController),
        ),
        body: TalkerWrapper(
          talker: Logger.talker,
          options: const TalkerWrapperOptions(
            enableErrorAlerts: true,
          ),
          child: Row(
            children: <Widget>[
              Expanded(
                  child:
                      Padding(padding: const EdgeInsets.all(8.0), child: child))
            ],
          ),
        ));
  }
}
