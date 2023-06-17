import 'package:flutter/material.dart';
import 'package:cstubes/api/message_api.dart';
import 'package:cstubes/models/message.dart';

class AdminPage extends StatefulWidget {
  @override
  _AdminPageState createState() => _AdminPageState();
}

class _AdminPageState extends State<AdminPage> {
  final MessageApi _messageApi = MessageApi();
  List<Message> _messages = [];

  @override
  void initState() {
    super.initState();
    _fetchMessages();
  }

  Future<void> _fetchMessages() async {
    try {
      final messages = await _messageApi.getMessages();
      setState(() {
        _messages = messages;
      });
    } catch (e) {
      print('Failed to fetch messages: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Admin Page'),
      ),
      body: ListView.builder(
        itemCount: _messages.length,
        itemBuilder: (context, index) {
          final message = _messages[index];
          return ListTile(
            title: Text(message.csMessageContent),
            subtitle: Text(message.csMessageDate.toString()),
          );
        },
      ),
    );
  }
}
