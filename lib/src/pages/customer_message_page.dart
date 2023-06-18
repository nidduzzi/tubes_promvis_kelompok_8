import 'package:flutter/material.dart';
import 'package:tubes_promvis_kelompok_8/src/helpers/auth.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/customer_service/csmessage_table.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/cs_message.graphql.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/layout/app_header.dart';

class CustomerMessageQueryWidget extends HookWidget {
  const CustomerMessageQueryWidget({super.key, required this.userId});

  final String userId;

  @override
  Widget build(BuildContext context) {
    final getMessage = useQuery$GetAllCsMessageQuery(
      Options$Query$GetAllCsMessageQuery(
        variables: Variables$Query$GetAllCsMessageQuery(),
      ),
    );

    final listMessage = getMessage.result.parsedData?.cs_message;

    return CSMessageTable(
            listMessage: listMessage) // Display the CSMessageTable widget
        ;
  }
}

class CustomerMessagePage extends HookWidget {
  const CustomerMessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final auth = NhostAuthProvider.of(context)!;
    final userId = auth.currentUser?.id;
    if (!isSignedIn(context)) {
      return const SizedBox();
    }
    bool isSmall = MediaQuery.of(context).size.width < 400;
    return AppHeader(
      title: 'Customer Messages',
      child: Padding(
        padding: EdgeInsets.only(
          left: isSmall ? 0 : 50,
          right: isSmall ? 0 : 50,
          top: 10,
          bottom: 10,
        ),
        child: CustomerMessageQueryWidget(userId: userId!),
        // Pass the userId to the CustomerMessageQueryWidget
      ),
    );
  }
}
