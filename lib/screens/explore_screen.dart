import 'package:flutter/material.dart';
import '../widgets/stylist_card.dart';

class ExploreScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Explore')),
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          StylistCard(
            name: 'Sophia Styles',
            expertise: 'Formal Wear',
          ),
          StylistCard(
            name: 'Mia Moda',
            expertise: 'Casual Fashion',
          ),
        ],
      ),
    );
  }
}
