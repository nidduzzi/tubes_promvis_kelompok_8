import 'package:flutter/material.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/navigation.dart';

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: () => goTo(context, '/login', push: true),
        child: const Text('Login'),
      ),
    );
  }
}
