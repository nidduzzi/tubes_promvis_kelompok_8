import 'package:flutter/material.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/navigation.dart';
import 'package:tubes_promvis_kelompok_8/src/types/route_params_type.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/navbar.dart';

class AppNavbar extends StatefulWidget {
  const AppNavbar(
      {required this.scaffoldKey, required this.routeData, super.key});
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
    goTo(context, routeParam.path);
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
              final routeData = widget.routeData[index];
              if (routeData.allowedRoles.any((element) =>
                      auth?.currentUser?.roles.contains(element) ?? false) ||
                  !routeData.publicOnly) {
                return ListTile(
                  leading: Icon(widget.routeData[index].icon),
                  title: Text(widget.routeData[index].title),
                  selected: index == selectedIndex,
                  onTap: () => handleTap(context, widget.routeData[index]),
                );
              }
              if (auth?.currentUser?.roles.any((element) =>
                      widget.routeData[index].allowedRoles.contains(element)) ??
                  false) {
                return const SizedBox();
              }
              return const SizedBox();
            case AuthenticationState.signedOut:
              if (widget.routeData[index].allowedRoles.isEmpty) {
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
