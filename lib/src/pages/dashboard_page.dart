import 'package:flutter/material.dart';

/// Displays the various settings that can be customized by the user.
///
/// When a user changes a setting, the SettingsController is updated and
/// Widgets that listen to the SettingsController are rebuilt.
class Home extends StatelessWidget {
  const Home({super.key});

  static const routeName = '/dashboard';

  @override
  Widget build(BuildContext context) {
    return const Padding(
        padding: EdgeInsets.all(16),
        // Glue the SettingsController to the theme selection DropdownButton.
        //
        // When a user selects a theme from the dropdown list, the
        // SettingsController is updated, which rebuilds the MaterialApp.
        child: Text(""));
  }
}
