import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';

class AccountInfoForm extends HookWidget {
  AccountInfoForm(
      {super.key,
      required this.handleCancel,
      required this.handleContinue,
      required this.handleGoTo});
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

    final trySaveProfile = useCallback(() async {
      try {
        if (!(formKey.currentState?.validate() ?? false)) {
          return false;
        }
        if (auth.authenticationState == AuthenticationState.signedIn) {
          if (auth.currentUser?.email?.toLowerCase() !=
              emailController.text.toLowerCase()) {
            await auth.changeEmail(emailController.text);
          }
          if (passwordController.text.isNotEmpty) {
            await auth.changePassword(newPassword: passwordController.text);
          }
          return true;
        }
      } on ApiException catch (err, st) {
        final decodedBody = const JsonDecoder().convert(err.response.body);
        final reasonPhrase =
            decodedBody["message"] != null ? ": ${decodedBody["message"]}" : "";
        Logger.talker.error("save profile failed", err, st);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
                'Save Profile Failed (HTTP STATUS ${err.response.statusCode}$reasonPhrase)'),
          ),
        );
      } catch (err, st) {
        Logger.talker.error("save profile failed", err, st);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Save Profile Failed due to internal error'),
          ),
        );
      }
    }, [
      emailController.text,
      passwordController.text,
      usernameController.text,
      formKey,
      user
    ]);
    if (user != null) {
      emailController.text = user.email ?? "";
      usernameController.text = user.displayName;
    }
    Future.delayed(Duration.zero, () {
      formKey.currentState?.validate();
    });
    return Form(
      key: formKey,
      child: FocusTraversalGroup(
        policy: ReadingOrderTraversalPolicy(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                    border: OutlineInputBorder(),
                  ),
                  autofocus: true,
                  onFieldSubmitted: (_) => trySaveProfile(),
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.email(),
                    FormBuilderValidators.required()
                  ])),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 6,
              ),
              child: TextFormField(
                controller: usernameController,
                decoration: const InputDecoration(
                  labelText: 'Username',
                  border: OutlineInputBorder(),
                ),
                autofocus: true,
                enabled: false,
                onFieldSubmitted: (_) => trySaveProfile(),
                validator:
                    FormBuilderValidators.required(errorText: "Username"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: TextFormField(
                controller: passwordController,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  border: OutlineInputBorder(),
                ),
                obscureText: true,
                onFieldSubmitted: (_) => trySaveProfile(),
                validator: FormBuilderValidators.compose([
                  FormBuilderValidators.minLength(8,
                      errorText: "Panjang password minimal 8",
                      allowEmpty: true),
                ]),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                onPressed: () => trySaveProfile(),
                child: const Text('SIMPAN'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
