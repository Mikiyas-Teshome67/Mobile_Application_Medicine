import 'package:flutter/material.dart';

class YouPage extends StatelessWidget {
  const YouPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        Card(
          child: ListTile(
            leading: CircleAvatar(child: Icon(Icons.person)),
            title: Text('User Mega Profile'),
            subtitle: Text('Orders, health history, loyalty, delivery status, settings.'),
          ),
        ),
      ],
    );
  }
}
