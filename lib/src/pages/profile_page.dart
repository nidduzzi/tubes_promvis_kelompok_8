import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/navigation.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/types/customer_role_type.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/layout/app_header.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/profile/profile_form.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/profile/umkm_form.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/profile/investor_form.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/profile/account_info_form.dart';

class ProfilePage extends HookWidget {
  const ProfilePage({super.key});

  static const routeName = '/profile';

  void fallbackRedirect(BuildContext context) {
    goTo(context, '/profile');
  }

  Widget _pageBuild(BuildContext context) {
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

    final scrollController = useScrollController();

    return ListView(
      controller: scrollController,
      children: [
        const Text("PROFIL"),
        Stepper(
          currentStep: tabIndex.value,
          onStepTapped: handleGoTo,
          physics: const ClampingScrollPhysics(),
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
                  fallbackRedirect: fallbackRedirect,
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
              ),
            ),
            if (type != null)
              Step(
                  title: Text('${type.toShortString()} Information'),
                  content: Builder(builder: (context) {
                    if (type == CustomerRoleType.Investor) {
                      return InvestorProfileForm(
                        handleCancel: handleCancel,
                        handleContinue: handleContinue,
                        handleGoTo: handleGoTo,
                        fallbackRedirect: fallbackRedirect,
                      );
                    } else {
                      return UMKMProfileForm(
                        handleCancel: handleCancel,
                        handleContinue: handleContinue,
                        handleGoTo: handleGoTo,
                        fallbackRedirect: fallbackRedirect,
                      );
                    }
                  })),
          ],
        )
      ]
          .map((e) => Center(
                child: ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 350),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: e,
                    )),
              ))
          .toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AppHeader(child: _pageBuild(context));
  }
}
