import 'package:flutter/material.dart';

class ChatMessage extends StatelessWidget {
  final String role;
  final String message;

  ChatMessage({required this.role, required this.message});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: role == 'user' ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        padding: EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: role == 'user' ? Colors.blue[100] : Colors.grey[300],
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(message),
      ),
    );
  }
}
