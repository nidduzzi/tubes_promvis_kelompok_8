import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/navigation.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/profile.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/schema.graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/types/register_page_type.dart';

class ProfileForm extends HookWidget {
  ProfileForm(
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
    final auth = NhostAuthProvider.of(context)!;
    final userId = auth.currentUser?.id;
    if (userId == null) {
      handleGoTo(0);
      return const SizedBox();
    }
    Logger.talker.log(auth.accessToken);
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

    final tryInsertProfile = useCallback(() async {
      try {
        if (!(formKey.currentState?.validate() ?? false)) {
          return false;
        }
        final profiles = getProfile.result.parsedData?.profile;
        if (profiles != null && profiles.isNotEmpty) {
          Logger.talker.log("updating profile");
          final res = await updateProfile
              .runMutation(Variables$Mutation$UpdateProfileMutation(
                  user_id: userId,
                  data: Input$profile_set_input(
                    profile_first_name: firstNameController.text,
                    profile_last_name: lastNameController.text,
                    profile_address: addressController.text,
                    profile_ktp_no: ktpController.text,
                    profile_npwp_no: npwpController.text,
                    profile_phone: phoneController.text,
                  )))
              .networkResult;

          if (res == null) {
            goTo(context, '/register/${type.toShortString()}');
            throw Exception("response is null");
          }
          if (res.hasException == true) {
            Logger.talker.error("update profile failed", res.exception);
          }
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
            goTo(context, '/register/${type.toShortString()}');
            throw Exception("response is null");
          }
          if (res.hasException == true) {
            Logger.talker.error("insert profile failed", res.exception);
          }
        }
        Logger.talker.log("continuing to next step from profile");
        handleContinue();
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
        Logger.talker.log("displaying existing profile data");
        final profile = profileList.first;
        firstNameController.text = profile.profile_first_name;
        lastNameController.text = profile.profile_last_name ?? "";
        addressController.text = profile.profile_address;
        ktpController.text = profile.profile_ktp_no;
        npwpController.text = profile.profile_npwp_no ?? "";
        phoneController.text = profile.profile_phone;
      }
      return Form(
        key: formKey,
        child: FocusTraversalGroup(
            policy: ReadingOrderTraversalPolicy(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormField(
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
                  onFieldSubmitted: (_) => tryInsertProfile(),
                ),
                TextFormField(
                  controller: lastNameController,
                  decoration: const InputDecoration(
                    labelText: 'Nama Belakang',
                    border: OutlineInputBorder(),
                  ),
                  autofocus: true,
                  onFieldSubmitted: (_) => tryInsertProfile(),
                ),
                TextFormField(
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
                  onFieldSubmitted: (_) => tryInsertProfile(),
                ),
                TextFormField(
                  controller: phoneController,
                  decoration: const InputDecoration(labelText: "No. HP"),
                  keyboardType: TextInputType.number,
                  autofocus: true,
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ], // Only numbers can be entered
                  onFieldSubmitted: (_) => tryInsertProfile(),
                ),
                TextFormField(
                  controller: ktpController,
                  decoration: const InputDecoration(labelText: "No. KTP"),
                  keyboardType: TextInputType.number,
                  autofocus: true,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ], // Only numbers can be entered
                  validator: FormBuilderValidators.compose([
                    FormBuilderValidators.required(),
                  ]),
                  onFieldSubmitted: (_) => tryInsertProfile(),
                ),
                TextFormField(
                  controller: npwpController,
                  decoration: const InputDecoration(labelText: "No. NPWP"),
                  autofocus: true,
                  onFieldSubmitted: (_) => tryInsertProfile(),
                ),
                const SizedBox(height: 12),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => tryInsertProfile(),
                  child: const Text('SIMPAN PROFIL'),
                )
              ],
            )),
      );
    }
    return const CircularProgressIndicator.adaptive();
  }
}

// class ProfileFormState {
//   final formKey = GlobalKey<FormState>();
//   late TextEditingController firstNameController;
//   late TextEditingController lastNameController;
//   late TextEditingController addressController;
//   late TextEditingController phoneController;
//   late TextEditingController ktpController;
//   late TextEditingController npwpController;

//   @override
//   void initState() {
//     super.initState();
//     firstNameController = TextEditingController(
//       text: '',
//     );
//     lastNameController = TextEditingController(
//       text: '',
//     );
//     addressController = TextEditingController(
//       text: '',
//     );
//     phoneController = TextEditingController(
//       text: '',
//     );
//     ktpController = TextEditingController(
//       text: '',
//     );
//     npwpController = TextEditingController(
//       text: '',
//     );
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     firstNameController.dispose();
//     lastNameController.dispose();
//     addressController.dispose();
//     phoneController.dispose();
//     ktpController.dispose();
//     npwpController.dispose();
//   }

//   void tryInsertProfile(
//       MultiSourceResult<Mutation$InsertProfileMutation> Function(
//               Variables$Mutation$InsertProfileMutation,
//               {Object? optimisticResult,
//               Mutation$InsertProfileMutation? typedOptimisticResult})
//           runMutation) async {
//     try {
//       final auth = NhostAuthProvider.of(context)!;
//       final userId = auth.currentUser?.id;
//       if (userId != null) {
//         runMutation(Variables$Mutation$InsertProfileMutation(
//             data: Input$profile_insert_input(
//                 profile_first_name: firstNameController.text,
//                 profile_last_name: lastNameController.text,
//                 profile_address: addressController.text,
//                 profile_ktp_no: ktpController.text,
//                 profile_npwp_no: npwpController.text,
//                 profile_phone: phoneController.text,
//                 user_id: userId)));
//       }
//     } on ApiException {
//       ScaffoldMessenger.of(context).showSnackBar(
//         const SnackBar(
//           content: Text('Failed to create profile'),
//         ),
//       );
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Form(
//       child: FocusTraversalGroup(
//           policy: ReadingOrderTraversalPolicy(),
//           child: Mutation$InsertProfileMutation$Widget(
//               options: WidgetOptions$Mutation$InsertProfileMutation(),
//               builder: (runMutation, result) {
//                 if (result?.isConcrete ?? false) {
//                   goTo(
//                     context,
//                     '/dashboard',
//                   );
//                 }
//                 return Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     TextFormField(
//                       controller: firstNameController,
//                       decoration: const InputDecoration(
//                         labelText: 'First Name',
//                         border: OutlineInputBorder(),
//                       ),
//                       autofocus: true,
//                       onFieldSubmitted: (_) => tryInsertProfile(
//                         runMutation,
//                       ),
//                     ),
//                     TextFormField(
//                       controller: lastNameController,
//                       decoration: const InputDecoration(
//                         labelText: 'Last Name',
//                         border: OutlineInputBorder(),
//                       ),
//                       autofocus: true,
//                       onFieldSubmitted: (_) => tryInsertProfile(
//                         runMutation,
//                       ),
//                     ),
//                     TextFormField(
//                       controller: addressController,
//                       decoration: const InputDecoration(
//                         labelText: 'Address',
//                         border: OutlineInputBorder(),
//                       ),
//                       autofocus: true,
//                       onFieldSubmitted: (_) => tryInsertProfile(
//                         runMutation,
//                       ),
//                     ),
//                     TextFormField(
//                       controller: phoneController,
//                       decoration:
//                           const InputDecoration(labelText: "Enter your number"),
//                       keyboardType: TextInputType.number,
//                       autofocus: true,
//                       inputFormatters: <TextInputFormatter>[
//                         FilteringTextInputFormatter.digitsOnly
//                       ], // Only numbers can be entered
//                       onFieldSubmitted: (_) => tryInsertProfile(
//                         runMutation,
//                       ),
//                     ),
//                     TextFormField(
//                       controller: ktpController,
//                       decoration: const InputDecoration(labelText: "No. KTP"),
//                       keyboardType: TextInputType.number,
//                       autofocus: true,
//                       inputFormatters: <TextInputFormatter>[
//                         FilteringTextInputFormatter.digitsOnly
//                       ], // Only numbers can be entered
//                       onFieldSubmitted: (_) => tryInsertProfile(
//                         runMutation,
//                       ),
//                     ),
//                     TextFormField(
//                       controller: npwpController,
//                       decoration: const InputDecoration(labelText: "No. NPWP"),
//                       autofocus: true,
//                       onFieldSubmitted: (_) => tryInsertProfile(
//                         runMutation,
//                       ),
//                     ),
//                     const SizedBox(height: 12),
//                     const SizedBox(height: 20),
//                     ElevatedButton(
//                       onPressed: () => tryInsertProfile(runMutation),
//                       child: const Text('SIMPAN PROFIL'),
//                     )
//                   ],
//                 );
//               })),
//     );
//   }
// }
