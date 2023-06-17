import 'package:flutter/material.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:provider/provider.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/navigation.dart';
import 'package:tubes_promvis_kelompok_8/src/providers/auth/app_auth_state.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/spinner.dart';

class LogoutPage extends StatelessWidget {
  const LogoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = NhostAuthProvider.of(context);
    final appAuthState = Provider.of<AppAuthState>(context);
    switch (appAuthState.authState) {
      case AuthenticationState.signedIn:
        auth?.signOut().then((value) => goTo(context, '/'));
        return const Spinner();
      case AuthenticationState.inProgress:
        return const Spinner();
      default:
        return const Spinner();
    }
  }
}
