import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/providers/settings/settings_controller.dart';
import 'package:tubes_promvis_kelompok_8/src/types/route_params_type.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/navbar.dart';

class AppNavbar extends StatefulWidget {
  const AppNavbar(
      {required this.scaffoldKey,
      required this.settingsController,
      required this.routeData,
      super.key});
  final SettingsController settingsController;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final List<RouteNavbarParams> routeData;

  @override
  State<StatefulWidget> createState() {
    return AppNavbarState();
  }
}

class AppNavbarState extends State<AppNavbar> {
  void handleTap(BuildContext context, RouteNavbarParams routeParam) {
    if (widget.scaffoldKey.currentState!.isDrawerOpen) {
      widget.scaffoldKey.currentState!.closeDrawer();
      //close drawer, if drawer is open
    } else {
      widget.scaffoldKey.currentState!.openDrawer();
      //open drawer, if drawer is closed
    }
    context.go(routeParam.path);
  }

  @override
  Widget build(BuildContext context) {
    final int? selectedIndex = getCurrentIndex(context, widget.routeData);
    final auth = NhostAuthProvider.of(context);
    return ListView.builder(
        itemCount: widget.routeData.length,
        itemBuilder: (_, index) {
          switch (auth?.authenticationState) {
            case AuthenticationState.signedIn:
              if (widget.routeData[index].private ||
                  !widget.routeData[index].publicOnly) {
                return ListTile(
                  leading: Icon(widget.routeData[index].icon),
                  title: Text(widget.routeData[index].title),
                  selected: index == selectedIndex,
                  onTap: () => handleTap(context, widget.routeData[index]),
                );
              }
              return const SizedBox();
            case AuthenticationState.signedOut:
              if (!widget.routeData[index].private) {
                return ListTile(
                  leading: Icon(widget.routeData[index].icon),
                  title: Text(widget.routeData[index].title),
                  selected: index == selectedIndex,
                  onTap: () => handleTap(context, widget.routeData[index]),
                );
              }
              return const SizedBox();
            default:
              return const SizedBox();
          }
        });
  }
}
