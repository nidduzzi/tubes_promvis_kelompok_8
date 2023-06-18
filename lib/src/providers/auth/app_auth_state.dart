import 'package:flutter/material.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/providers/auth/auth_store.dart';
import 'package:tubes_promvis_kelompok_8/src/providers/config/config_service.dart';

class AppAuthState with ChangeNotifier {
  AppAuthState() {
    Logger.talker.critical("creating AppAuthState");
    _authStore = SharedPreferencesAuthStore();
    _authState = AuthenticationState.inProgress;
    _nhostClient = NhostClient(
      subdomain: Subdomain(
        subdomain: ConfigService.apiSubdomain,
        region: ConfigService.apiRegion,
      ),
      // Instruct the client to store tokens using shared preferences.
      authStore: _authStore,
    );
    loginFromStoredCredentials();
    _authStateChangedDispose =
        _nhostClient.auth.addAuthStateChangedCallback((authenticationState) {
      Logger.talker.log("auth state changed");
      _authState = authenticationState;
      notifyListeners();
    });
  }

  @override
  void dispose() {
    super.dispose();
    _authStateChangedDispose();
    _nhostClient.close();
  }

  late void Function() _authStateChangedDispose;
  late NhostClient _nhostClient;
  late SharedPreferencesAuthStore _authStore;
  late AuthenticationState _authState;

  SharedPreferencesAuthStore get authStore => _authStore;
  AuthenticationState get authState => _authState;
  NhostClient get nhostClient => _nhostClient;
  NhostAuthClient get auth => _nhostClient.auth;

  Future<void> loginFromStoredCredentials() async {
    if ((await authStore.getString('nhostRefreshToken')) != null) {
      Logger.talker.log("loging in with stored credentials");
      // this will fetch refresh token and will sign user in!
      try {
        final res = await nhostClient.auth.signInWithStoredCredentials();
        final user = res.user;
        Logger.talker.log('user is signed in ${res.user?.id}');
        if (user != null) {
          _authState = AuthenticationState.signedIn;
        } else {
          _authState = nhostClient.auth.authenticationState;
        }
      } on ApiException catch (e) {
        if (e.body['error'] == 'invalid-refresh-token') {
          Logger.talker.log("invalid refresh token, removing token");
          await authStore.removeItem('nhostRefreshToken');
        } else {
          Logger.talker.error(e);
        }
        _authState = AuthenticationState.signedOut;
      } catch (e) {
        Logger.talker.error(e);
        _authState = AuthenticationState.signedOut;
      }
    } else {
      Logger.talker.log("no stored credentials found");
      _authState = AuthenticationState.signedOut;
    }

    notifyListeners();
  }
}
