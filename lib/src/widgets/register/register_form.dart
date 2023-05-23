import 'package:flutter/material.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/types/register_page_type.dart';
import 'dart:developer' as developer;

import 'package:tubes_promvis_kelompok_8/src/widgets/profile/umkm_form.dart';

class RegisterForm extends StatefulWidget {
  const RegisterForm({super.key, required this.type});
  final RegisterPageType type;
  @override
  State<RegisterForm> createState() => RegisterFormState();
}

class RegisterFormState extends State<RegisterForm> {
  final formKey = GlobalKey<FormState>();
  String userId = '';
  late TextEditingController usernameController;
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    usernameController = TextEditingController(
      text: '',
    );
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
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  void trySignUp() async {
    final auth = NhostAuthProvider.of(context)!;

    try {
      final res = await auth.signUp(
          email: emailController.text,
          password: passwordController.text,
          displayName: usernameController.text,
          roles: [
            widget.type == RegisterPageType.Investor ? "investor" : "umkm",
            "me",
            "user"
          ],
          defaultRole:
              widget.type == RegisterPageType.Investor ? "investor" : "umkm");
      final user = res.user;
      if (user != null) {
        setState(() {
          userId = user.id;
        });
        // auth.signIn
      }
    } on ApiException catch (e, st) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Sign up Failed'),
        ),
      );
      developer.log("signup failed", error: e, stackTrace: st);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (userId != '') {
      switch (widget.type) {
        case RegisterPageType.UMKM:
          return const UMKMProfileForm();
        case RegisterPageType.Investor:
          break;
        default:
      }
    }
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
              onFieldSubmitted: (_) => trySignUp(),
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
              autofocus: true,
              onFieldSubmitted: (_) => trySignUp(),
            ),
            const SizedBox(height: 12),
            TextFormField(
              controller: passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
              onFieldSubmitted: (_) => trySignUp(),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: trySignUp,
              child: const Text('DAFTAR'),
            )
          ],
        ),
      ),
    );
  }
}
