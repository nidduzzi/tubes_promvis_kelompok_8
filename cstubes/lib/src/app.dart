import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/providers/auth/auth_store.dart';
import 'package:tubes_promvis_kelompok_8/src/providers/config/config_service.dart';
import 'package:tubes_promvis_kelompok_8/src/providers/settings/settings_service.dart';
import 'package:tubes_promvis_kelompok_8/src/routes.dart';
import 'providers/settings/settings_controller.dart';

/// The Widget that configures your application.
class P2PApp extends StatefulWidget {
  const P2PApp({
    super.key,
    // required this.settingsController,
  });

  static final SettingsController settingsController =
      SettingsController(SettingsService());

  @override
  State<StatefulWidget> createState() => P2PAppState();
}

class P2PAppState extends State<P2PApp> {
  late NhostClient nhostClient;

  @override
  void initState() {
    super.initState();
    // Create a new Nhost client using your project's subdomain and region.
    nhostClient = NhostClient(
      subdomain: Subdomain(
        subdomain: ConfigService.apiSubdomain,
        region: ConfigService.apiRegion,
      ),
      // Instruct the client to store tokens using shared preferences.
      authStore: SharedPreferencesAuthStore(),
    );
    // this will fetch refresh token and will sign user in!
    nhostClient.auth
        .signInWithStoredCredentials()
        .then((value) => Logger.talker.log('user is signed in $value'))
        .catchError((error, st) => Logger.talker.handle(error, st));
  }

  @override
  Widget build(BuildContext context) {
    // Glue the SettingsController to the MaterialApp.
    //
    // The AnimatedBuilder Widget listens to the SettingsController for changes.
    // Whenever the user updates their settings, the MaterialApp is rebuilt.

    return NhostGraphQLProvider(
        nhostClient: nhostClient,
        child: MaterialApp.router(
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
          themeMode: P2PApp.settingsController.themeMode,

          // Define a function to handle named routes in order to support
          // Flutter web url navigation and deep linking.
          routeInformationProvider: AppRouter.router.routeInformationProvider,
          routeInformationParser: AppRouter.router.routeInformationParser,
          routerDelegate: AppRouter.router.routerDelegate,
        ));
  }
}
