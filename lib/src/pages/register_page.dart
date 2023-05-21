import 'package:flutter/material.dart';
import 'package:tubes_promvis_kelompok_8/src/types/register_page_type.dart';

/// Displays the various settings that can be customized by the user.
///
/// When a user changes a setting, the SettingsController is updated and
/// Widgets that listen to the SettingsController are rebuilt.

class RegisterPageParams {
  final RegisterPageType type;

  RegisterPageParams(this.type);
}

class RegisterPage extends StatelessWidget implements RegisterPageParams {
  const RegisterPage({super.key, required this.type});

  static const routeName = '/register';

  @override
  final RegisterPageType type;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: Text("Register ${type.toShortString()}"));
  }
}
