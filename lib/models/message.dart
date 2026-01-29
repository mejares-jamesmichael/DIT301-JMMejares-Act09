class Message {
  final String id;
  final String text;
  final String senderEmail;
  final DateTime timestamp;

  Message({
    required this.id,
    required this.text,
    required this.senderEmail,
    required this.timestamp,
  });
}
