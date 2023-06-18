import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:provider/provider.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/navigation.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/providers/auth/app_auth_state.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/spinner.dart';

class LogoutPage extends HookWidget {
  const LogoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = NhostAuthProvider.of(context);
    final appAuthState = Provider.of<AppAuthState>(context);

    switch (appAuthState.authState) {
      case AuthenticationState.signedIn:
        auth?.signOut();
        return const Spinner();
      case AuthenticationState.inProgress:
        return const Spinner();
      case AuthenticationState.signedOut:
        Logger.talker.log("user signed out and redirecting to logout");
        goToNamed(context, 'logout');
        return const Spinner();
      default:
        return const Spinner();
    }
  }
}
