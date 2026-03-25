import 'package:flutter/material.dart';

class AIAssistantPage extends StatelessWidget {
  const AIAssistantPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'AI Assistance',
            style: Theme.of(context).textTheme.headlineSmall,
          ),
          const SizedBox(height: 12),
          const Text(
            'This area is reserved for medication Q&A, app guidance, symptom triage, '
            'and failure recovery workflows powered by secure LLM + medical guardrails.',
          ),
        ],
      ),
    );
  }
}
