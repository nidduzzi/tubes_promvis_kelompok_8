import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tubes_promvis_kelompok_8/src/providers/settings/settings_controller.dart';
import 'package:tubes_promvis_kelompok_8/src/types/route_params_type.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/layout/app_navbar.dart';

class AppShell extends StatefulWidget {
  AppShell({required this.child, required this.settingsController, super.key});
  final Widget child;
  final SettingsController settingsController;
  final List<RouteParams> _routeData = [
    RouteParams(icon: Icons.home, label: 'Home', path: '/', title: 'Home'),
    RouteParams(
        icon: Icons.business,
        label: 'Daftar Sebagai UMKM',
        path: '/register/UMKM',
        title: 'Register UMKM'),
    RouteParams(
        icon: Icons.person,
        label: 'Daftar Sebagai Investor',
        path: '/register/Investor',
        title: 'Register Investor'),
    RouteParams(icon: Icons.pages, label: 'Blog', path: '/blog', title: 'Blog'),
    RouteParams(
        icon: Icons.login, label: 'Login', path: '/login', title: 'Login'),
    RouteParams(
        icon: Icons.settings,
        label: 'Settings',
        path: '/settings',
        title: 'Settings'),
  ];

  @override
  State<StatefulWidget> createState() {
    return AppShellState();
  }
}

class AppShellState extends State<AppShell> {
  int getCurrentIndex(BuildContext context) {
    final String location = GoRouter.of(context).location;
    final candidates = widget._routeData
        .asMap()
        .entries
        .where((element) => element.value.path.startsWith(location))
        .toList();
    candidates.sort((a, b) {
      final aLen = a.value.path.length;
      final bLen = b.value.path.length;
      return aLen > bLen ? 1 : (aLen == bLen ? 0 : -1);
    });
    return candidates[0].key;
  }

  final scaffoldKey = GlobalKey<ScaffoldState>();

  void handleTap(BuildContext context, RouteParams routeParam) {
    if (scaffoldKey.currentState!.isDrawerOpen) {
      scaffoldKey.currentState!.closeDrawer();
      //close drawer, if drawer is open
    } else {
      scaffoldKey.currentState!.openDrawer();
      //open drawer, if drawer is closed
    }
    context.go(routeParam.path);
  }

  @override
  Widget build(BuildContext context) {
    final int selectedIndex = getCurrentIndex(context);

    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        title: Text(widget._routeData[selectedIndex].title),
      ),
      drawer: Drawer(
        child: AppNavbar(
            routeData: widget._routeData,
            scaffoldKey: scaffoldKey,
            settingsController: widget.settingsController),
      ),
      body: Row(
        children: <Widget>[Expanded(child: widget.child)],
      ),
    );
  }
}
