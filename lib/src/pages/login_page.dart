import 'package:flutter/material.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:provider/provider.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/navigation.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/providers/auth/app_auth_state.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/layout/app_header.dart';
import 'dart:math';

import 'package:tubes_promvis_kelompok_8/src/widgets/spinner.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController(
      text: '',
    );
    passwordController = TextEditingController(
      text: '',
    );
  }

  @override
  void dispose() {
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  Future<bool> trySignIn(BuildContext context) async {
    final auth = NhostAuthProvider.of(context);
    if (auth == null) {
      throw Exception('auth is null in trySignIn() login page');
    }
    if (!formKey.currentState!.validate()) {
      return false;
    }
    try {
      final res = await auth.signInEmailPassword(
          email: emailController.text, password: passwordController.text);
      Logger.talker.log(res);
      Logger.talker.log(res.session?.accessToken);
    } on ApiException catch (err, st) {
      Logger.talker.error(err, st);
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Sign in Failed'),
        ),
      );
    } catch (err, st) {
      Logger.talker.error(err, st);
    }
    return false;
  }

  Widget _pageBuild(BuildContext context) {
    final appAuthState = Provider.of<AppAuthState>(context);
    final mediaQuery = MediaQuery.of(context).size;

    switch (appAuthState.authState) {
      case AuthenticationState.signedOut:
        return Scaffold(
          body: SingleChildScrollView(
              padding: EdgeInsets.symmetric(vertical: mediaQuery.height * .05),
              child: Column(children: [
                const Text(
                  "Login to your account and get started.",
                ),
                SizedBox(
                  height: mediaQuery.height * .04,
                ),
                Form(
                    key: formKey,
                    child: Center(
                        child: SizedBox(
                      width: min(mediaQuery.width * .8, 500),
                      child: FocusTraversalGroup(
                        policy: ReadingOrderTraversalPolicy(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TextFormField(
                              controller: emailController,
                              decoration: const InputDecoration(
                                labelText: 'Email',
                                border: OutlineInputBorder(),
                              ),
                              autofocus: true,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter an email';
                                }
                                return null;
                              },
                              onFieldSubmitted: (_) => trySignIn(context),
                            ),
                            const SizedBox(height: 12),
                            TextFormField(
                              controller: passwordController,
                              decoration: const InputDecoration(
                                labelText: 'Password',
                                border: OutlineInputBorder(),
                              ),
                              obscureText: true,
                              validator: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter a password';
                                }
                                return null;
                              },
                              onFieldSubmitted: (_) => trySignIn(context),
                            ),
                            const SizedBox(height: 20),
                            ElevatedButton(
                              onPressed: () => trySignIn(context),
                              child: const Text('MASUK'),
                            )
                          ],
                        ),
                      ),
                    )))
              ])),
        );
      case AuthenticationState.signedIn:
        Logger.talker.log("user already logged in");
        back(context);
        return const Spinner();
      default:
        return const Spinner();
    }
  }

  @override
  Widget build(BuildContext context) {
    return AppHeader(child: _pageBuild(context));
  }
}
