import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:provider/provider.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/navbar.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/navigation.dart';
import 'package:tubes_promvis_kelompok_8/src/providers/auth/app_auth_state.dart';
import 'package:tubes_promvis_kelompok_8/src/types/route_params_type.dart';

import '../providers/settings/settings_controller.dart';

/// Displays the various settings that can be customized by the user.
///
/// When a user changes a setting, the SettingsController is updated and
/// Widgets that listen to the SettingsController are rebuilt.
class SettingsPage extends HookWidget {
  SettingsPage({super.key});
  final List<RouteNavbarParams> routeData = [
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
        label: 'Profile',
        path: '/profile',
        title: 'Profile',
        allowedRoles: ['me'],
        publicOnly: false),
  ];

  @override
  Widget build(BuildContext context) {
    final auth = NhostAuthProvider.of(context);
    final appAuthState = Provider.of<AppAuthState>(context);
    final int? selectedIndex = getCurrentIndex(context, routeData);
    final controller = Provider.of<SettingsController>(context);
    final listItems = useMemoized(() => [
          DropdownButton<ThemeMode>(
            // Read the selected themeMode from the controller
            value: controller.themeMode,
            // Call the updateThemeMode method any time the user selects a theme.
            onChanged: controller.updateThemeMode,
            items: const [
              DropdownMenuItem(
                value: ThemeMode.system,
                child: Text('System Theme'),
              ),
              DropdownMenuItem(
                value: ThemeMode.light,
                child: Text('Light Theme'),
              ),
              DropdownMenuItem(
                value: ThemeMode.dark,
                child: Text('Dark Theme'),
              )
            ],
          ),
          ...routeData.asMap().entries.map((entry) {
            final index = entry.key;
            final routeParams = entry.value;

            switch (appAuthState.authState) {
              case AuthenticationState.signedIn:
                if (routeParams.allowedRoles.any((element) =>
                        auth?.currentUser?.roles.contains(element) ?? false) ||
                    !routeParams.publicOnly) {
                  return _buildListItem(
                      context, routeParams, index, selectedIndex);
                }
                // if (auth?.currentUser?.roles.any((element) =>
                //         routeParams.allowedRoles.contains(element)) ??
                //     false) {
                //   return const SizedBox();
                // }
                return const SizedBox();
              case AuthenticationState.signedOut:
                if (routeParams.allowedRoles.isEmpty) {
                  return _buildListItem(
                      context, routeParams, index, selectedIndex);
                }
                return const SizedBox();
              default:
                return const SizedBox();
            }
          })
        ]);
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(16),
            // Glue the SettingsController to the theme selection DropdownButton.
            //
            // When a user selects a theme from the dropdown list, the
            // SettingsController is updated, which rebuilds the MaterialApp.
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: listItems.length,
              itemBuilder: (context, index) {
                return listItems[index];
              },
            )));
  }

  Widget _buildListItem(BuildContext context, RouteNavbarParams routeParams,
      int index, int? selectedIndex) {
    return ListTile(
      leading: Icon(routeParams.icon),
      title: Text(routeParams.title),
      selected: index == selectedIndex,
      onTap: () => goTo(context, routeParams.path),
    );
  }
}
