import 'package:flutter/material.dart';

class StylistCard extends StatelessWidget {
  final String name;
  final String expertise;

  StylistCard({required this.name, required this.expertise});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        title: Text(name),
        subtitle: Text(expertise),
        trailing: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/chat');
          },
          child: Text('Chat'),
        ),
      ),
    );
  }
}
