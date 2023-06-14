import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:go_router/go_router.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:talker_flutter/talker_flutter.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/navigation.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/routes.dart';
import 'package:tubes_promvis_kelompok_8/src/types/route_params_type.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/layout/app_navbar.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/navbar.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/spinner.dart';

class AppShell extends HookWidget {
  AppShell({required this.child, super.key});
  final Widget child;

  final List<RouteNavbarParams> routeData = [
    RouteNavbarParams(
        icon: Icons.home,
        label: 'Home',
        path: '/',
        title: 'Home',
        allowedRoles: [],
        publicOnly: false),
    RouteNavbarParams(
        icon: Icons.dashboard,
        label: 'Dashboard',
        path: '/dashboard',
        title: 'Dashboard',
        allowedRoles: ['me'],
        publicOnly: false),
    RouteNavbarParams(
        icon: Icons.business,
        label: 'Daftar Sebagai UMKM',
        path: '/register/UMKM',
        title: 'Register UMKM',
        allowedRoles: [],
        publicOnly: true),
    RouteNavbarParams(
        icon: Icons.person,
        label: 'Daftar Sebagai Investor',
        path: '/register/Investor',
        title: 'Register Investor',
        allowedRoles: [],
        publicOnly: true),
    RouteNavbarParams(
        icon: Icons.pages,
        label: 'Blog',
        path: '/blog',
        title: 'Blog',
        allowedRoles: [],
        publicOnly: false),
    RouteNavbarParams(
        icon: Icons.login,
        label: 'Login',
        path: '/login',
        title: 'Login',
        allowedRoles: [],
        publicOnly: true),
    RouteNavbarParams(
        icon: Icons.logout,
        label: 'Logout',
        path: '/logout',
        title: 'Logout',
        allowedRoles: ['me'],
        publicOnly: false),
    RouteNavbarParams(
        icon: Icons.settings,
        label: 'Settings',
        path: '/settings',
        title: 'Settings',
        allowedRoles: [],
        publicOnly: false),
    RouteNavbarParams(
        icon: Icons.settings,
        label: 'Profile',
        path: '/profile',
        title: 'Profile',
        allowedRoles: ['me'],
        publicOnly: false),
  ];

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final auth = NhostAuthProvider.of(context);
    if (auth == null) {
      throw Exception('auth is null in app shell');
    }
    final int? selectedIndex = getCurrentIndex(context, routeData);
    final location = GoRouter.of(context).location;
    late Widget child;
    switch (auth.authenticationState) {
      case AuthenticationState.signedIn:
        child = this.child;
        break;
      case AuthenticationState.signedOut:
        final locationRoute =
            AppRouter.routes.where((element) => element.path == location);
        if (locationRoute.isNotEmpty && locationRoute.first.private) {
          Logger.talker.log('route is private, redirecting to login');
          child = const Spinner();
          goTo(context, '/login');
        } else {
          child = this.child;
        }
        break;
      case AuthenticationState.inProgress:
        child = const Spinner();
        break;
      default:
        child = const Text("undetermined authentication state");
        Logger.talker.log(auth);
    }

    return Scaffold(
        key: scaffoldKey,
        appBar: AppBar(
          title: Text(
              selectedIndex != null ? routeData[selectedIndex].title : "App"),
        ),
        drawer: Drawer(
          child: AppNavbar(routeData: routeData, scaffoldKey: scaffoldKey),
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
