import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/types/customer_role_type.dart';

class AccountInfoForm extends HookWidget {
  AccountInfoForm(
      {super.key,
      required this.handleCancel,
      required this.handleContinue,
      required this.handleGoTo,
      required this.fallbackRedirect,
      this.type,
      this.isRegister = false});
  final void Function() handleCancel;
  final void Function() handleContinue;
  final void Function(int index) handleGoTo;
  final void Function(BuildContext context) fallbackRedirect;
  final CustomerRoleType? type;
  final bool isRegister;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final usernameController = useTextEditingController();
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final auth = NhostAuthProvider.of(context)!;
    final user = auth.currentUser;
    if (type != null) type?.toShortString();
    final trySaveProfile = useCallback(() async {
      try {
        if (!(formKey.currentState?.validate() ?? false)) {
          return false;
        }

        if (isRegister) {
          final type = this.type;
          if (type == null) {
            throw Exception("account info form type is null");
          }
          if (auth.authenticationState == AuthenticationState.signedOut) {
            final role = type.toShortString().toLowerCase();
            final res = await auth.signUp(
                email: emailController.text,
                password: passwordController.text,
                displayName: usernameController.text,
                roles: <String>["me", "user", role],
                defaultRole: role);

            assert(res.user != null, "user sign up returned no user");
            if (res.user == null) {
              if (context.mounted) fallbackRedirect(context);
              throw Exception("user in response is null");
            }
            handleContinue();
            return true;
          }
        } else {
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
        }
      } on ApiException catch (err, st) {
        final decodedBody = const JsonDecoder().convert(err.response.body);
        final reasonPhrase =
            decodedBody["message"] != null ? ": ${decodedBody["message"]}" : "";
        Logger.talker.error("save account info failed", err, st);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
                'Save account info failed (HTTP STATUS ${err.response.statusCode}$reasonPhrase)'),
          ),
        );
      } catch (err, st) {
        Logger.talker.error("save account info failed", err, st);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Save account info failed due to internal error'),
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
    if (!isRegister) {
      Future.delayed(Duration.zero, () {
        formKey.currentState?.validate();
      });
    }
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
                enabled: isRegister,
                onFieldSubmitted: (_) => trySaveProfile(),
                validator: FormBuilderValidators.required(),
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
                  FormBuilderValidators.minLength(8, allowEmpty: !isRegister),
                  if (isRegister) FormBuilderValidators.required()
                ]),
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: ElevatedButton(
                onPressed: () => trySaveProfile(),
                child: Text(isRegister ? 'DAFTAR' : 'SIMPAN'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
