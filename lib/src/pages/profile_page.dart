import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/types/customer_role_type.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/profile/profile_form.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/profile/umkm_form.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/profile/investor_form.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/profile/account_info_form.dart';

class ProfilePage extends HookWidget {
  const ProfilePage({super.key});

  static const routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    final auth = NhostAuthProvider.of(context);

    final tabIndex = useState(0);

    final handleCancel = useCallback(() {
      Future.delayed(Duration.zero, () {
        if (tabIndex.value > 0) {
          tabIndex.value -= 1;
        }
      });
    }, [tabIndex.value]);

    final handleContinue = useCallback(() {
      Logger.talker.log("continue register steps");
      Future.delayed(Duration.zero, () {
        if (tabIndex.value <= 3) {
          tabIndex.value += 1;
        }
      });
    }, [tabIndex.value]);

    final handleGoTo = useCallback((int index) {
      Future.delayed(Duration.zero, () {
        tabIndex.value = index;
      });
    }, [tabIndex.value]);
    final type = useMemoized(() {
      if (auth?.currentUser?.roles.contains('investor') ?? false) {
        return CustomerRoleType.Investor;
      }
      if ((auth?.currentUser?.roles.contains('umkm')) ?? false) {
        return CustomerRoleType.UMKM;
      }
    }, [auth?.currentUser?.roles]);
    return SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const Text("PROFIL"),
            Builder(
              builder: (context) {
                return Stepper(
                  currentStep: tabIndex.value,
                  onStepTapped: handleGoTo,
                  controlsBuilder: (context, details) {
                    return const SizedBox();
                  },
                  steps: <Step>[
                    Step(
                      title: const Text('Account Information'),
                      content: Container(
                        alignment: Alignment.centerLeft,
                        child: AccountInfoForm(
                            handleCancel: handleCancel,
                            handleContinue: handleContinue,
                            handleGoTo: handleGoTo),
                      ),
                    ),
                    Step(
                      title: const Text('Profile'),
                      content: ProfileForm(
                          handleCancel: handleCancel,
                          handleContinue: handleContinue,
                          handleGoTo: handleGoTo),
                    ),
                    if (type != null)
                      Step(
                          title: Text('${type.toShortString()} Information'),
                          content: Builder(builder: (context) {
                            if (type == CustomerRoleType.Investor) {
                              return InvestorProfileForm(
                                  handleCancel: handleCancel,
                                  handleContinue: handleContinue,
                                  handleGoTo: handleGoTo);
                            } else {
                              return UMKMProfileForm(
                                  handleCancel: handleCancel,
                                  handleContinue: handleContinue,
                                  handleGoTo: handleGoTo);
                            }
                          })),
                  ],
                );
              },
            )
          ],
        ));
  }
}
