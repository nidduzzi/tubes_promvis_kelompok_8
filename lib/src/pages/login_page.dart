import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';

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
    final auth = NhostAuthProvider.of(context)!;
    if (!formKey.currentState!.validate()) {
      return false;
    }
    try {
      final res = await auth.signInEmailPassword(
          email: emailController.text, password: passwordController.text);
      Logger.talker.log(res);
      Logger.talker.log(res.session?.accessToken);
      return true;
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

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
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
              onFieldSubmitted: (_) => trySignIn(context)
                  .then((value) => {if (value) context.go('/dashboard')}),
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
              onFieldSubmitted: (_) => trySignIn(context)
                  .then((value) => {if (value) context.go('/dashboard')}),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => trySignIn(context)
                  .then((value) => {if (value) context.go('/dashboard')}),
              child: const Text('MASUK'),
            )
          ],
        ),
      ),
    );
  }
}
