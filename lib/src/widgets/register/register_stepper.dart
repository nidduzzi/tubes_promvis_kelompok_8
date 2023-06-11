import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/types/register_page_type.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/register/investor_form.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/register/profile_form.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/register/register_form.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/register/umkm_form.dart';

class RegisterStepper extends HookWidget {
  const RegisterStepper({super.key, required this.type});

  final RegisterPageType type;

  @override
  Widget build(BuildContext context) {
    final registerStage = useState(0);

    final handleCancel = useCallback(() {
      Future.delayed(Duration.zero, () {
        if (registerStage.value > 0) {
          registerStage.value -= 1;
        }
      });
    }, [registerStage.value]);

    final handleContinue = useCallback(() {
      Logger.talker.log("continue register steps");
      Future.delayed(Duration.zero, () {
        if (registerStage.value <= 3) {
          registerStage.value += 1;
        }
      });
    }, [registerStage.value]);

    final handleGoTo = useCallback((int index) {
      Future.delayed(Duration.zero, () {
        registerStage.value = index;
      });
    }, [registerStage.value]);

    return Stepper(
      currentStep: registerStage.value,
      onStepTapped: handleGoTo,
      controlsBuilder: (context, details) {
        return const SizedBox();
      },
      steps: <Step>[
        Step(
          title: const Text('Account Information'),
          content: Container(
            alignment: Alignment.centerLeft,
            child: RegisterForm(
                type: type,
                handleCancel: handleCancel,
                handleContinue: handleContinue,
                handleGoTo: handleGoTo),
          ),
        ),
        Step(
          title: const Text('Profile'),
          content: ProfileForm(
              type: type,
              handleCancel: handleCancel,
              handleContinue: handleContinue,
              handleGoTo: handleGoTo),
        ),
        Step(
            title: Text('${type.toShortString()} Information'),
            content: Builder(builder: (context) {
              if (type == RegisterPageType.Investor) {
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
  }
}
