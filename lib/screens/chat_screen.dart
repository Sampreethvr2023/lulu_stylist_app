import 'package:flutter/material.dart';
import '../widgets/chat_message.dart';

class ChatScreen extends StatelessWidget {
  final List<Map<String, String>> messages = [
    {'role': 'user', 'message': 'Can you suggest an outfit for a wedding?'},
    {'role': 'stylist', 'message': 'Sure! How about a navy blue suit?'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Chat')),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          return ChatMessage(
            role: messages[index]['role']!,
            message: messages[index]['message']!,
          );
        },
      ),
    );
  }
}
