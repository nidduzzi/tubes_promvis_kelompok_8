import 'package:flutter/material.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/auth.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/navigation.dart';
import 'package:tubes_promvis_kelompok_8/src/types/customer_role_type.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/Home/login_button.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/Home/register_button.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/Home/statistics_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = NhostAuthProvider.of(context);
    if (auth == null) {
      throw Exception('auth is null in home page');
    }
    return Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Text('Home'),
              if (isSignedOut(context))
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LoginButton(),
                    RegisterButton(type: CustomerRoleType.Investor),
                    RegisterButton(type: CustomerRoleType.UMKM)
                  ],
                ),
              if (isSignedIn(context)) const StatisticsCard(),
              // TODO: add blog page then enable
              // ElevatedButton(
              //     onPressed: () => goTo(context, '/blog'),
              //     child: const Text('View Blog'))
              if (isCustomer(context))
                ElevatedButton(
                  onPressed: () => goTo(context, '/cs_message'),
                  child: const Text('CS Message'),
                ),
              if (isCSPlus(context))
                ElevatedButton(
                  onPressed: () => goTo(context, '/cs_message_admin'),
                  child: const Text('CS Message'),
                ),
            ]
                .map((e) => Padding(
                      padding: const EdgeInsets.all(8),
                      child: e,
                    ))
                .toList(),
          ),
        ));
  }
}
