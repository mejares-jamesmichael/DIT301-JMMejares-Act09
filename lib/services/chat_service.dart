import 'package:flutter/material.dart';
import '../models/message.dart';

class ChatService extends ChangeNotifier {
  final List<Message> _messages = [
    Message(
      id: '1',
      text: 'Welcome to the lab chat!',
      senderEmail: 'system@lab.com',
      timestamp: DateTime.now().subtract(const Duration(minutes: 5)),
    ),
  ];

  List<Message> get messages => List.unmodifiable(_messages);

  void sendMessage(String text, String senderEmail) {
    final newMessage = Message(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      text: text,
      senderEmail: senderEmail,
      timestamp: DateTime.now(),
    );
    _messages.add(newMessage);
    notifyListeners();
  }
}
