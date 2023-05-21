import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tubes_promvis_kelompok_8/src/providers/settings/settings_controller.dart';
import 'package:tubes_promvis_kelompok_8/src/types/route_params_type.dart';

class AppNavbar extends StatefulWidget {
  const AppNavbar(
      {required this.scaffoldKey,
      required this.settingsController,
      required this.routeData,
      super.key});
  final SettingsController settingsController;
  final GlobalKey<ScaffoldState> scaffoldKey;
  final List<RouteParams> routeData;

  @override
  State<StatefulWidget> createState() {
    return AppNavbarState();
  }
}

class AppNavbarState extends State<AppNavbar> {
  int getCurrentIndex(BuildContext context) {
    final String location = GoRouter.of(context).location;
    final candidates = widget.routeData
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

  void handleTap(BuildContext context, RouteParams routeParam) {
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
    final int _selectedIndex = getCurrentIndex(context);

    return ListView.builder(
        itemCount: widget.routeData.length,
        itemBuilder: (_, index) {
          return ListTile(
            leading: Icon(widget.routeData[index].icon),
            title: Text(widget.routeData[index].title),
            selected: index == _selectedIndex,
            onTap: () => handleTap(context, widget.routeData[index]),
          );
        });
  }
}
