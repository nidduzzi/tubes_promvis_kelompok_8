import 'package:flutter/material.dart';
import 'package:tubes_promvis_kelompok_8/src/types/customer_role_type.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/register/register_stepper.dart';

class RegisterPageParams {
  final CustomerRoleType type;

  RegisterPageParams(this.type);
}

class RegisterPage extends StatelessWidget implements RegisterPageParams {
  const RegisterPage({super.key, required this.type});

  static const routeName = '/register';

  @override
  final CustomerRoleType type;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(type == CustomerRoleType.UMKM
                ? "Ayo Daftarkan UMKM Anda, untuk Peluang Lebih Baik!"
                : "Mari Investasikan danamu disini! "),
            const Text("Mohon lengkapi data diri anda."),
            const Text("REGISTRASI"),
            RegisterStepper(type: type)
          ],
        ));
  }
}
