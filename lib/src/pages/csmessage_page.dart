import 'package:flutter/material.dart';
import 'package:tubes_promvis_kelompok_8/src/logger.dart';
import 'package:tubes_promvis_kelompok_8/src/widgets/customer_service/csmessage_form.dart';

class CSPage extends StatefulWidget {
  const CSPage({Key? key}) : super(key: key);

  @override
  CSPageState createState() => CSPageState();
}

class CSPageState extends State<CSPage> {
  int formKey = 0;

  final TextEditingController messageController = TextEditingController();

  void handleCancel() {
    setState(() {
      messageController.clear(); // Mengosongkan input field
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
        child: CSForm(
          key: ValueKey(formKey),
          handleCancel: handleCancel,
          handleContinue: handleContinue,
          handleGoTo: handleGoTo,
          messageController: messageController,
        ),
      ),
    );
  }
}
