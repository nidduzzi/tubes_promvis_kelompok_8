import 'package:flutter/material.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/navigation.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';

class LogoutPage extends StatelessWidget {
  const LogoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = NhostAuthProvider.of(context);
    switch (auth?.authenticationState) {
      case AuthenticationState.signedIn:
        return FutureBuilder(
          future: auth?.signOut(),
          builder: (context, snapshot) {
            switch (snapshot.connectionState) {
              case ConnectionState.waiting:
                return const CircularProgressIndicator();
              case ConnectionState.none:
                goTo(context, '/');
                return const CircularProgressIndicator();
              default:
                if (snapshot.hasError) {
                  Logger.talker.debug(snapshot.error);
                  return Text('Error: ${snapshot.error}');
                } else {
                  goTo(context, '/');
                  return const Text("logged out successfully");
                }
            }
          },
        );

      case AuthenticationState.inProgress:
        return const CircularProgressIndicator();
      default:
        goTo(context, '/');
        return const CircularProgressIndicator();
    }
  }
}
