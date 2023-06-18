import 'package:flutter/material.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/navigation.dart';
import 'package:tubes_promvis_kelompok_8/src/types/customer_role_type.dart';

class RegisterButton extends StatelessWidget {
  const RegisterButton({super.key, required this.type});
  final CustomerRoleType type;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: ElevatedButton(
        onPressed: () =>
            goTo(context, '/register/${type.toShortString()}', push: true),
        child: Text('Register as ${type.toShortString()}'),
      ),
    );
  }
}
