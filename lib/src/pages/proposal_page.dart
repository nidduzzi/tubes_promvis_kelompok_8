import 'package:flutter/material.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/proposal/proposal_form.dart';

class ProposalPage extends StatefulWidget {
  const ProposalPage({Key? key}) : super(key: key);

  @override
  ProposalPageState createState() => ProposalPageState();
}

class ProposalPageState extends State<ProposalPage> {
  int formKey = 0;

  final TextEditingController proposalContentController =
      TextEditingController();

  void handleCancel() {
    setState(() {
      proposalContentController.clear(); // Mengosongkan input field
      formKey++; // Mereset form dengan mengubah nilai formKey
    });
  }

  void handleContinue() {
    // Implement the continue functionality
  }

  void handleGoTo(int index) {
    Logger.talker.log('handleGoTo called');
    // Implement the go to functionality
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(0),
        child: ProposalForm(
          key: ValueKey(formKey),
          handleCancel: handleCancel,
          handleContinue: handleContinue,
          handleGoTo: handleGoTo,
        ),
      ),
    );
  }
}
