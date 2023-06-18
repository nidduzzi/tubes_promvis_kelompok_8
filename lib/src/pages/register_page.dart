import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/navigation.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/types/customer_role_type.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/layout/app_header.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/profile/account_info_form.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/profile/investor_form.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/profile/profile_form.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/profile/umkm_form.dart';

class RegisterPageParams {
  final CustomerRoleType type;

  RegisterPageParams(this.type);
}

class RegisterPage extends HookWidget implements RegisterPageParams {
  const RegisterPage({super.key, required this.type});

  static const routeName = '/register';

  @override
  final CustomerRoleType type;
  void fallbackRedirect(BuildContext context) {
    goTo(context, '/register/${type.toShortString()}');
  }

  Widget _pageBuild(BuildContext context) {
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
    return SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(type == CustomerRoleType.UMKM
                ? "Ayo Daftarkan UMKM Anda, untuk Peluang Lebih Baik!"
                : "Mari Investasikan danamu disini! "),
            const Text("Mohon lengkapi data diri anda."),
            const Text("REGISTRASI"),
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
                          handleGoTo: handleGoTo,
                          type: type,
                          fallbackRedirect: fallbackRedirect,
                          isRegister: true,
                        ),
                      ),
                    ),
                    Step(
                      title: const Text('Profile'),
                      content: ProfileForm(
                        handleCancel: handleCancel,
                        handleContinue: handleContinue,
                        handleGoTo: handleGoTo,
                        fallbackRedirect: fallbackRedirect,
                        isRegister: true,
                      ),
                    ),
                    Step(
                        title: Text('${type.toShortString()} Information'),
                        content: Builder(builder: (context) {
                          if (type == CustomerRoleType.Investor) {
                            return InvestorProfileForm(
                              handleCancel: handleCancel,
                              handleContinue: handleContinue,
                              handleGoTo: handleGoTo,
                              fallbackRedirect: fallbackRedirect,
                              isRegister: true,
                            );
                          } else {
                            return UMKMProfileForm(
                              handleCancel: handleCancel,
                              handleContinue: handleContinue,
                              handleGoTo: handleGoTo,
                              fallbackRedirect: fallbackRedirect,
                              isRegister: true,
                            );
                          }
                        })),
                  ],
                );
              },
            )
          ],
        ));
  }

  @override
  Widget build(BuildContext context) {
    return AppHeader(title: "Register", child: _pageBuild(context));
  }
}
