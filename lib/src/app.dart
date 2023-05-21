import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/blog_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/home_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/login_page.dart';
import 'package:tubes_promvis_kelompok_8/src/pages/register_page.dart';
import 'package:tubes_promvis_kelompok_8/src/types/register_page_type.dart';
import 'package:go_router/go_router.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/layout/app_shell.dart';

import 'pages/sample_item_details_page.dart';
import 'pages/sample_item_list_page.dart';
import 'providers/settings/settings_controller.dart';
import 'pages/settings_page.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  MyApp({
    super.key,
    required this.settingsController,
  });

  final GlobalKey<NavigatorState> _rootNavigatorKey =
      GlobalKey<NavigatorState>();
  final GlobalKey<NavigatorState> _shellNavigatorKey =
      GlobalKey<NavigatorState>();

  final SettingsController settingsController;

  @override
  Widget build(BuildContext context) {
    // Glue the SettingsController to the MaterialApp.
    //
    // The AnimatedBuilder Widget listens to the SettingsController for changes.
    // Whenever the user updates their settings, the MaterialApp is rebuilt.

    return MaterialApp.router(
      // Providing a restorationScopeId allows the Navigator built by the
      // MaterialApp to restore the navigation stack when a user leaves and
      // returns to the app after it has been killed while running in the
      // background.
      restorationScopeId: 'app',

      // Provide the generated AppLocalizations to the MaterialApp. This
      // allows descendant Widgets to display the correct translations
      // depending on the user's locale.
      localizationsDelegates: const [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en', ''), // English, no country code
      ],

      // Use AppLocalizations to configure the correct application title
      // depending on the user's locale.
      //
      // The appTitle is defined in .arb files found in the localization
      // directory.
      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context)!.appTitle,

      // Define a light and dark color theme. Then, read the user's
      // preferred ThemeMode (light, dark, or system default) from the
      // SettingsController to display the correct theme.
      theme: ThemeData(),
      darkTheme: ThemeData.dark(),
      themeMode: settingsController.themeMode,

      // Define a function to handle named routes in order to support
      // Flutter web url navigation and deep linking.
      routerConfig: GoRouter(
        navigatorKey: _rootNavigatorKey,
        initialLocation: '/',
        routes: [
          ShellRoute(
            navigatorKey: _shellNavigatorKey,
            builder: (context, state, child) {
              return AppShell(
                settingsController: settingsController,
                child: child,
              );
            },
            routes: [
              GoRoute(
                path: '/',
                builder: (context, state) => const HomePage(),
              ),
              GoRoute(
                path: '/sample_item',
                builder: (context, state) => const SampleItemListPage(),
              ),
              GoRoute(
                path: '/sample_item/:id',
                builder: (context, state) => const SampleItemDetailsPage(),
              ),
              GoRoute(
                path: '/settings',
                builder: (context, state) =>
                    SettingsPage(controller: settingsController),
              ),
              GoRoute(
                path: '/register',
                builder: (context, state) =>
                    const RegisterPage(type: RegisterPageType.Investor),
              ),
              GoRoute(
                path: '/register/:type',
                builder: (context, state) => RegisterPage(
                    type: RegisterPageType.values
                        .byName(state.pathParameters['type'] ?? "UMKM")),
              ),
              GoRoute(
                path: '/register/:type',
                builder: (context, state) => RegisterPage(
                    type: RegisterPageType.values
                        .byName(state.pathParameters['type'] ?? "UMKM")),
              ),
              GoRoute(
                path: '/login',
                builder: (context, state) => LoginPage(),
              ),
              GoRoute(
                path: '/blog',
                builder: (context, state) => BlogPage(),
              ),
            ],
          )
        ],
      ),
    );
  }
}
