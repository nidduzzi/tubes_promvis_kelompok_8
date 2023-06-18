import 'package:flutter/material.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/customer_service/csmessage_table.dart';
import 'package:tubes_promvis_kelompok_8/src/types/graphql/__generated/cs_message.graphql.dart';
import 'package:nhost_flutter_graphql/nhost_flutter_graphql.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class CustomerMessageQueryWidget extends HookWidget {
  final String userId;

  CustomerMessageQueryWidget({required this.userId});

  @override
  Widget build(BuildContext context) {
    final getMessage = useQuery$GetAllCsMessageQuery(
      Options$Query$GetAllCsMessageQuery(
        variables: Variables$Query$GetAllCsMessageQuery(),
      ),
    );

    final listMessage = getMessage.result.parsedData?.cs_message;

    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.only(top: 8, bottom: 16),
          child: Text(
            'Customer Messages',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        CSMessageTable(listMessage: listMessage), // Display the CSMessageTable widget
      ],
    );
  }
}

class CustomerMessagePage extends StatelessWidget {
  const CustomerMessagePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final auth = NhostAuthProvider.of(context)!;
    final userId = auth.currentUser?.id;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 55, right: 55, top: 100, bottom: 100),
        child: CustomerMessageQueryWidget(userId: userId!), // Pass the userId to the CustomerMessageQueryWidget
      ),
    );
  }
}
