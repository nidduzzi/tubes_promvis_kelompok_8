class Message {
  final int csMessageId;
  final String csMessageContent;
  final DateTime csMessageDate;
  final String csUserId;
  final DateTime createdAt;
  final DateTime updatedAt;

  Message({
    required this.csMessageId,
    required this.csMessageContent,
    required this.csMessageDate,
    required this.csUserId,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return Message(
      csMessageId: json['cs_message_id'],
      csMessageContent: json['cs_message_content'],
      csMessageDate: DateTime.parse(json['cs_message_date']),
      csUserId: json['cs_user_id'],
      createdAt: DateTime.parse(json['created_at']),
      updatedAt: DateTime.parse(json['updated_at']),
    );
  }
}
