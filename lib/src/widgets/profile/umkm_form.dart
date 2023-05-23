import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql.dart';

class UMKMProfileForm extends StatefulWidget {
  const UMKMProfileForm({super.key});

  @override
  State<UMKMProfileForm> createState() => UMKMProfileFormState();
}

class UMKMProfileFormState extends State<UMKMProfileForm> {
  final formKey = GlobalKey<FormState>();
  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController addressController;
  late TextEditingController phoneController;
  late TextEditingController ktpController;
  late TextEditingController npwpController;

  @override
  void initState() {
    super.initState();
    firstNameController = TextEditingController(
      text: '',
    );
    lastNameController = TextEditingController(
      text: '',
    );
    addressController = TextEditingController(
      text: '',
    );
    phoneController = TextEditingController(
      text: '',
    );
    ktpController = TextEditingController(
      text: '',
    );
    npwpController = TextEditingController(
      text: '',
    );
  }

  @override
  void dispose() {
    super.dispose();
    firstNameController.dispose();
    lastNameController.dispose();
    addressController.dispose();
    phoneController.dispose();
    ktpController.dispose();
    npwpController.dispose();
  }

  void tryInsertProfile(RunMutation runMutation) async {
    try {
      final auth = NhostAuthProvider.of(context)!;
      final userId = auth.currentUser?.id;
      if (userId != null) {
        runMutation({
          "data": {
            "profile_first_name": firstNameController.text,
            "profile_last_name": lastNameController.text,
            "profile_address": addressController.text,
            "profile_ktp_no": ktpController.text,
            "profile_npwp_no": npwpController.text,
            "profile_phone": phoneController.text,
            "user_id": userId
          }
        });
      }
    } on ApiException {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Failed to create profile'),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: FocusTraversalGroup(
          policy: ReadingOrderTraversalPolicy(),
          child: Mutation(
              options: MutationOptions(document: insertProfileMutation),
              builder: (runMutation, result) {
                if (result?.isConcrete ?? false) {
                  context.go('/dashboard');
                }
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextFormField(
                      controller: firstNameController,
                      decoration: const InputDecoration(
                        labelText: 'First Name',
                        border: OutlineInputBorder(),
                      ),
                      autofocus: true,
                      onFieldSubmitted: (_) => tryInsertProfile(
                        runMutation,
                      ),
                    ),
                    TextFormField(
                      controller: lastNameController,
                      decoration: const InputDecoration(
                        labelText: 'Last Name',
                        border: OutlineInputBorder(),
                      ),
                      autofocus: true,
                      onFieldSubmitted: (_) => tryInsertProfile(
                        runMutation,
                      ),
                    ),
                    TextFormField(
                      controller: addressController,
                      decoration: const InputDecoration(
                        labelText: 'Address',
                        border: OutlineInputBorder(),
                      ),
                      autofocus: true,
                      onFieldSubmitted: (_) => tryInsertProfile(
                        runMutation,
                      ),
                    ),
                    TextFormField(
                      controller: phoneController,
                      decoration:
                          const InputDecoration(labelText: "Enter your number"),
                      keyboardType: TextInputType.number,
                      autofocus: true,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ], // Only numbers can be entered
                      onFieldSubmitted: (_) => tryInsertProfile(
                        runMutation,
                      ),
                    ),
                    TextFormField(
                      controller: ktpController,
                      decoration: const InputDecoration(labelText: "No. KTP"),
                      keyboardType: TextInputType.number,
                      autofocus: true,
                      inputFormatters: <TextInputFormatter>[
                        FilteringTextInputFormatter.digitsOnly
                      ], // Only numbers can be entered
                      onFieldSubmitted: (_) => tryInsertProfile(
                        runMutation,
                      ),
                    ),
                    TextFormField(
                      controller: npwpController,
                      decoration: const InputDecoration(labelText: "No. NPWP"),
                      autofocus: true,
                      onFieldSubmitted: (_) => tryInsertProfile(
                        runMutation,
                      ),
                    ),
                    const SizedBox(height: 12),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () => tryInsertProfile(runMutation),
                      child: const Text('SIMPAN PROFIL'),
                    )
                  ],
                );
              })),
    );
  }
}
