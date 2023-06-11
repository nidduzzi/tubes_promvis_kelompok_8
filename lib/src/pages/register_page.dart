import 'package:flutter/material.dart';
import 'package:tubes_promvis_kelompok_8/src/types/register_page_type.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/register/register_stepper.dart';

class RegisterPageParams {
  final RegisterPageType type;

  RegisterPageParams(this.type);
}

class RegisterPage extends StatelessWidget implements RegisterPageParams {
  const RegisterPage({super.key, required this.type});

  static const routeName = '/register';

  @override
  final RegisterPageType type;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(type == RegisterPageType.UMKM
                ? "Ayo Daftarkan UMKM Anda, untuk Peluang Lebih Baik!"
                : "Mari Investasikan danamu disini! "),
            const Text("Mohon lengkapi data diri anda."),
            const Text("REGISTRASI"),
            RegisterStepper(type: type)
          ],
        ));
  }
}
