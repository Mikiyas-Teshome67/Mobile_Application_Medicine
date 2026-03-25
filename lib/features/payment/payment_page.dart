import 'package:flutter/material.dart';

import '../../core/l10n/app_strings.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key, required this.medicineName});

  final String medicineName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(medicineName)),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Provider: AddisCare Pharma Hub',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 12),
            const Text('Reach provider via:'),
            const SizedBox(height: 8),
            const Text('• Email: support@addiscare.et'),
            const Text('• Phone: +251-911-000-000'),
            const Text('• GitHub: github.com/Mikiyas-Teshome67'),
            const Text('• Telegram: @addiscarepharma'),
            const Text('• YouTube: AddisCare Health'),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: FilledButton.icon(
                icon: const Icon(Icons.account_balance_wallet),
                label: Text(AppStrings.t(context, 'pay')),
                onPressed: () => ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Telebirr API hook pending: configure merchant + callback.'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
