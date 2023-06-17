import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/auth.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/navigation.dart';
import 'package:tubes_promvis_kelompok_8/src/types/customer_role_type.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/Home/investor_statistics_card.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/Home/umkm_statistics_card.dart';

class StatisticsCard extends HookWidget {
  const StatisticsCard({super.key});

  @override
  Widget build(BuildContext context) {
    final auth = NhostAuthProvider.of(context);
    if (auth == null) {
      throw Exception('auth is null in summary widget');
    }
    if (!isSignedIn(context)) {
      throw Exception('user is not signed in to view statistics card');
    }
    final roles = auth.currentUser?.roles;
    if (roles == null) {
      throw Exception('user roles is empty in statistics card');
    }
    // ignore: unnecessary_nullable_for_final_variable_declarations
    final CustomerRoleType? type =
        CustomerRoleType.values.firstWhere((element) {
      return roles.contains(element.toShortString().toLowerCase());
    });
    if (type == null) {
      return const SizedBox();
    }

    return SizedBox(
      width: 400,
      child: Card(
          child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ListTile(
              leading: const Icon(Icons.show_chart),
              title: const Text('Statistics'),
              subtitle: Text(
                  'A summary of your ${type == CustomerRoleType.Investor ? 'investments' : 'proposals'}'),
            ),
            if (type == CustomerRoleType.Investor)
              const InvestorStatisticsCard(),
            if (type == CustomerRoleType.UMKM) const UMKMStatisticsCard(),
            ElevatedButton(
                onPressed: () {
                  goTo(context, '/portofolio');
                },
                child: const Text("More Details"))
          ],
        ),
      )),
    );
  }
}
