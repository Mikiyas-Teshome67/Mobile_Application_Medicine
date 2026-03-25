import 'package:flutter/material.dart';

class ContactDoctorsPage extends StatelessWidget {
  const ContactDoctorsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(16),
      children: const [
        Card(
          child: ListTile(
            leading: Icon(Icons.video_call),
            title: Text('Live Doctor Consultation'),
            subtitle: Text('24/7 telemedicine triage and treatment guidance.'),
          ),
        ),
        Card(
          child: ListTile(
            leading: Icon(Icons.health_and_safety),
            title: Text('Emergency Advisory'),
            subtitle: Text('Immediate care pathways and specialist escalation.'),
          ),
        ),
      ],
    );
  }
}
