import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/profile.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/schema.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/spinner.dart';

class ProfileForm extends HookWidget {
  ProfileForm(
      {super.key,
      required this.handleCancel,
      required this.handleContinue,
      required this.handleGoTo,
      required this.fallbackRedirect,
      this.isRegister = false});
  final void Function() handleCancel;
  final void Function() handleContinue;
  final void Function(int index) handleGoTo;
  final void Function(BuildContext context) fallbackRedirect;
  final bool isRegister;
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final auth = NhostAuthProvider.of(context)!;
    final userId = auth.currentUser?.id;
    if (userId == null) {
      handleGoTo(0);
      return const SizedBox();
    }
    final firstNameController = useTextEditingController();
    final lastNameController = useTextEditingController();
    final addressController = useTextEditingController();
    final phoneController = useTextEditingController();
    final ktpController = useTextEditingController();
    final npwpController = useTextEditingController();
    final getProfile = useQuery$GetUserProfileQuery(
        Options$Query$GetUserProfileQuery(
            variables: Variables$Query$GetUserProfileQuery(user_id: userId)));
    final insertProfile = useMutation$InsertProfileMutation();
    final updateProfile = useMutation$UpdateProfileMutation();

    final tryUpdateProfile = useCallback(() async {
      try {
        if (!(formKey.currentState?.validate() ?? false)) {
          return false;
        }
        final profile = getProfile.result.parsedData?.profile.first;

        if (profile != null) {
          Logger.talker.log("updating profile");
          final res = await updateProfile
              .runMutation(Variables$Mutation$UpdateProfileMutation(
                  user_id: userId,
                  data: Input$profile_set_input(
                    profile_first_name:
                        profile.profile_first_name != firstNameController.text
                            ? firstNameController.text
                            : null,
                    profile_last_name: (profile.profile_last_name ?? "") !=
                            lastNameController.text
                        ? lastNameController.text
                        : null,
                    profile_address:
                        profile.profile_address != addressController.text
                            ? addressController.text
                            : null,
                    profile_ktp_no: profile.profile_ktp_no != ktpController.text
                        ? ktpController.text
                        : null,
                    profile_npwp_no:
                        (profile.profile_npwp_no ?? "") != npwpController.text
                            ? npwpController.text
                            : null,
                    profile_phone:
                        (profile.profile_phone) != phoneController.text
                            ? phoneController.text
                            : null,
                  )))
              .networkResult;
          if (res == null) {
            if (context.mounted) fallbackRedirect(context);
            throw Exception("response is null");
          }
          if (res.hasException == true) {
            Logger.talker.error("update profile failed", res.exception);
          }
          await getProfile.refetch();
        } else {
          Logger.talker.log("inserting profile");
          final res = await insertProfile
              .runMutation(Variables$Mutation$InsertProfileMutation(
                  data: Input$profile_insert_input(
                      profile_first_name: firstNameController.text,
                      profile_last_name: lastNameController.text,
                      profile_address: addressController.text,
                      profile_ktp_no: ktpController.text,
                      profile_npwp_no: npwpController.text,
                      profile_phone: phoneController.text,
                      user_id: userId)))
              .networkResult;

          if (res == null) {
            if (context.mounted) fallbackRedirect(context);
            throw Exception("response is null");
          }
          if (res.hasException == true) {
            Logger.talker.error("insert profile failed", res.exception);
          }
        }
        if (isRegister) handleContinue();
        return true;
      } on ApiException catch (err, st) {
        final decodedBody = const JsonDecoder().convert(err.response.body);
        final reasonPhrase =
            decodedBody["message"] != null ? ": ${decodedBody["message"]}" : "";
        Logger.talker.error("Failed to create profile", err, st);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(
                'Failed to create profile (HTTP STATUS ${err.response.statusCode}$reasonPhrase)'),
          ),
        );
      } catch (err, st) {
        Logger.talker.error("Failed to create profile", err, st);
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Tidak dapat membuat profil karena error internal'),
          ),
        );
        handleCancel();
      }
    }, [
      firstNameController.text,
      lastNameController.text,
      addressController.text,
      ktpController.text,
      npwpController.text,
      phoneController.text,
      userId,
      formKey
    ]);

    if (getProfile.result.isConcrete) {
      final profileList = getProfile.result.parsedData?.profile;
      if (profileList != null && profileList.isNotEmpty) {
        final profile = profileList.first;
        firstNameController.text = profile.profile_first_name;
        lastNameController.text = profile.profile_last_name ?? "";
        addressController.text = profile.profile_address;
        ktpController.text = profile.profile_ktp_no;
        npwpController.text = profile.profile_npwp_no ?? "";
        phoneController.text = profile.profile_phone;
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
                    controller: firstNameController,
                    decoration: const InputDecoration(
                      labelText: 'Nama Depan',
                      border: OutlineInputBorder(),
                    ),
                    autofocus: true,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.minLength(1)
                    ]),
                    onFieldSubmitted: (_) => tryUpdateProfile(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: TextFormField(
                    controller: lastNameController,
                    decoration: const InputDecoration(
                      labelText: 'Nama Belakang',
                      border: OutlineInputBorder(),
                    ),
                    autofocus: true,
                    onFieldSubmitted: (_) => tryUpdateProfile(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: TextFormField(
                    controller: addressController,
                    decoration: const InputDecoration(
                      labelText: 'Alamat',
                      border: OutlineInputBorder(),
                    ),
                    autofocus: true,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.minWordsCount(1)
                    ]),
                    onFieldSubmitted: (_) => tryUpdateProfile(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: TextFormField(
                    controller: phoneController,
                    decoration: const InputDecoration(labelText: "No. HP"),
                    keyboardType: TextInputType.number,
                    autofocus: true,
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                    ]),
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    onFieldSubmitted: (_) => tryUpdateProfile(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: TextFormField(
                    controller: ktpController,
                    decoration: const InputDecoration(labelText: "No. KTP"),
                    keyboardType: TextInputType.number,
                    autofocus: true,
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.digitsOnly
                    ],
                    validator: FormBuilderValidators.compose([
                      FormBuilderValidators.required(),
                      FormBuilderValidators.numeric(),
                      FormBuilderValidators.equalLength(16)
                    ]),
                    onFieldSubmitted: (_) => tryUpdateProfile(),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: TextFormField(
                    controller: npwpController,
                    decoration: const InputDecoration(labelText: "No. NPWP"),
                    autofocus: true,
                    onFieldSubmitted: (_) => tryUpdateProfile(),
                  ),
                ),
                const SizedBox(height: 12),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => tryUpdateProfile(),
                  child: const Text('SIMPAN PROFIL'),
                )
              ],
            )),
      );
    }
    return const Spinner();
  }
}
