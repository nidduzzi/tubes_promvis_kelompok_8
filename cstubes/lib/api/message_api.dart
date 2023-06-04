import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:cstubes/models/message.dart';

class MessageApi {
  static const String apiUrl = 'https://api.example.com'; // Ganti dengan URL API Anda

  Future<List<Message>> getMessages() async {
    final response = await http.get(Uri.parse('$apiUrl/messages'));
    if (response.statusCode == 200) {
      final List<dynamic> data = json.decode(response.body);
      return data.map((json) => Message.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load messages');
    }
  }

  Future<void> postMessage(String messageContent) async {
    final response = await http.post(
      Uri.parse('$apiUrl/messages'),
      body: json.encode({'cs_message_content': messageContent}),
      headers: {'Content-Type': 'application/json'},
    );
    if (response.statusCode != 200) {
      throw Exception('Failed to post message');
    }
  }
}
