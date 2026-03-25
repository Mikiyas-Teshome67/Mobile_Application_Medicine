import 'package:flutter/material.dart';

import '../../core/l10n/app_strings.dart';
import '../payment/payment_page.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    final medicines = [
      ('Paracetamol', 'Pain relief and fever reducer'),
      ('Cough Syrup', 'Fast soothing for throat and cough'),
      ('Medhanit መድሀኒት Pack', 'Daily pharmacy essentials for family care'),
    ];

    return ListView(
      padding: const EdgeInsets.all(16),
      children: [
        Text(
          AppStrings.t(context, 'tagline'),
          style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 16),
        ...medicines.map(
          (item) => Card(
            child: ListTile(
              title: Text(item.$1),
              subtitle: Text(item.$2),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => PaymentPage(medicineName: item.$1),
                ),
              ),
            ),
          ),
        ),
        const SizedBox(height: 24),
        Card(
          child: ListTile(
            leading: const Icon(Icons.location_on),
            title: Text(AppStrings.t(context, 'nearby')),
            subtitle: const Text('Google Maps integration entry point for nearby providers.'),
          ),
        ),
        const SizedBox(height: 32),
        Text(
          AppStrings.t(context, 'developer'),
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Text('GitHub: github.com/Mikiyas-Teshome67'),
      ],
    );
  }
}
