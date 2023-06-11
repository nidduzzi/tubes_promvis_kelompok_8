import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/navigation.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/types/register_page_type.dart';

class RegisterForm extends HookWidget {
  RegisterForm(
      {super.key,
      required this.type,
      required this.handleCancel,
      required this.handleContinue,
      required this.handleGoTo});
  final RegisterPageType type;
  final void Function() handleCancel;
  final void Function() handleContinue;
  final void Function(int index) handleGoTo;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final usernameController = useTextEditingController();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final auth = NhostAuthProvider.of(context)!;
    final user = auth.currentUser;

    final trySignUp = useCallback(() async {
      try {
        if (!(formKey.currentState?.validate() ?? false)) {
          return false;
        }
        if (auth.authenticationState == AuthenticationState.signedOut) {
          final res = await auth.signUp(
              email: emailController.text,
              password: passwordController.text,
              displayName: usernameController.text,
              roles: [
                type == RegisterPageType.Investor ? "investor" : "umkm",
                "me",
                "user"
              ],
              defaultRole:
                  type == RegisterPageType.Investor ? "investor" : "umkm");

          assert(res.user != null, "user sign up returned no user");
          if (res.user == null) {
            throw Exception("user in response is null");
          }
          handleContinue();
          return true;
        }
      } on ApiException catch (err, st) {
        final decodedBody = const JsonDecoder().convert(err.response.body);
        final reasonPhrase =
            decodedBody["message"] != null ? ": ${decodedBody["message"]}" : "";
        Logger.talker.error("signup failed", err, st);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
                'Sign up Failed (HTTP STATUS ${err.response.statusCode}$reasonPhrase)'),
          ),
        );
      } catch (err, st) {
        Logger.talker.error("signup failed", err, st);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Sign up Failed due to internal error'),
          ),
        );
      }
    }, [
      emailController.text,
      passwordController.text,
      usernameController.text,
      type,
      formKey,
      user
    ]);
    if (auth.authenticationState == AuthenticationState.signedIn &&
        user != null) {
      emailController.text = user.email ?? "";
      usernameController.text = user.displayName;
      // passwordController.text = ;
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
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.email(),
                  FormBuilderValidators.required()
                ])),
            const SizedBox(height: 12),
            TextFormField(
              controller: usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
              autofocus: true,
              onFieldSubmitted: (_) => trySignUp(),
              validator: FormBuilderValidators.required(
                  errorText: "Masukkan Username"),
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
              validator: FormBuilderValidators.compose([
                FormBuilderValidators.minLength(8,
                    errorText: "Panjang password minimal 8"),
                FormBuilderValidators.required(errorText: "Massukkan password")
              ]),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => trySignUp(),
              child: const Text('DAFTAR'),
            )
          ],
        ),
      ),
    );
  }
}

// class RegisterFormState extends State<RegisterForm> {
//   final formKey = GlobalKey<FormState>();
//   String userId = '';
//   late TextEditingController usernameController;
//   late TextEditingController emailController;
//   late TextEditingController passwordController;

//   @override
//   void initState() {
//     super.initState();
//     usernameController = TextEditingController(
//       text: '',
//     );
//     emailController = TextEditingController(
//       text: '',
//     );
//     passwordController = TextEditingController(
//       text: '',
//     );
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     usernameController.dispose();
//     emailController.dispose();
//     passwordController.dispose();
//   }

//   void trySignUp(BuildContext context) async {
//     final auth = NhostAuthProvider.of(context)!;

//     try {
//       final res = await auth.signUp(
//           email: emailController.text,
//           password: passwordController.text,
//           displayName: usernameController.text,
//           roles: [
//             widget.type == RegisterPageType.Investor ? "investor" : "umkm",
//             "me",
//             "user"
//           ],
//           defaultRole:
//               widget.type == RegisterPageType.Investor ? "investor" : "umkm");
//       assert(res.user != null, "user sign up returned no user");
//     } on ApiException catch (e, st) {
//       final reasonPhrase =
//           e.response.reasonPhrase != null ? ": ${e.response.reasonPhrase}" : "";
//       ScaffoldMessenger.of(context).showSnackBar(
//         SnackBar(
//           content: Text(
//               'Sign up Failed ( HTTP STATUS ${e.response.statusCode}$reasonPhrase )'),
//         ),
//       );
//       Logger.talker.log("signup failed", error: e, stackTrace: st);
//     } on Exception catch (e, st) {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text('Sign up Failed due to internal error'),
//         ),
//       );
//       Logger.talker.log("signup failed", error: e, stackTrace: st);
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       key: formKey,
//       child: FocusTraversalGroup(
//         policy: ReadingOrderTraversalPolicy(),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             TextFormField(
//               controller: emailController,
//               decoration: const InputDecoration(
//                 labelText: 'Email',
//                 border: OutlineInputBorder(),
//               ),
//               autofocus: true,
//               onFieldSubmitted: (_) => trySignUp(context),
//             ),
//             const SizedBox(height: 12),
//             TextFormField(
//               controller: usernameController,
//               decoration: const InputDecoration(
//                 labelText: 'Username',
//                 border: OutlineInputBorder(),
//               ),
//               autofocus: true,
//               onFieldSubmitted: (_) => trySignUp(context),
//             ),
//             const SizedBox(height: 12),
//             TextFormField(
//               controller: passwordController,
//               decoration: const InputDecoration(
//                 labelText: 'Password',
//                 border: OutlineInputBorder(),
//               ),
//               obscureText: true,
//               onFieldSubmitted: (_) => trySignUp(context),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () => trySignUp(context),
//               child: const Text('DAFTAR'),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
