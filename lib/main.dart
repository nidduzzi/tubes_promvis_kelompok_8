import 'package:flutter/material.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'dart:async';
import 'src/app.dart';

void main() async {
  // Set up the SettingsController, which will glue user settings to multiple
  // Flutter Widgets.
  final settingsController = P2PApp.settingsController;

  // Load the user's preferred theme while the splash screen is displayed.
  // This prevents a sudden theme change when the app is first displayed.
  await settingsController.loadSettings();

  // Run the app and pass in the SettingsController. The app listens to the
  // SettingsController for changes, then passes it further down to the
  // SettingsView.
  runZonedGuarded(
    () => runApp(const P2PApp()),
    (Object error, StackTrace stack) {
      Logger.talker.handle(error, stack, 'Uncaught app exception');
    },
  );
}
