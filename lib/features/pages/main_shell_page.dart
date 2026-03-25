import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../core/l10n/app_strings.dart';
import '../../core/l10n/locale_controller.dart';
import '../../core/theme/theme_controller.dart';
import '../ai_assistant/ai_assistant_page.dart';
import '../contact_doctors/contact_doctors_page.dart';
import '../explore/explore_page.dart';
import '../profile/you_page.dart';

class MainShellPage extends StatefulWidget {
  const MainShellPage({super.key});

  @override
  State<MainShellPage> createState() => _MainShellPageState();
}

class _MainShellPageState extends State<MainShellPage> {
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    final pages = [
      const ExplorePage(),
      const ContactDoctorsPage(),
      const AIAssistantPage(),
      const YouPage(),
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.t(context, 'appName')),
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: () => context.read<ThemeController>().toggleTheme(),
          ),
          PopupMenuButton<Locale>(
            icon: const Icon(Icons.language),
            onSelected: context.read<LocaleController>().setLocale,
            itemBuilder: (_) => const [
              PopupMenuItem(value: Locale('en'), child: Text('English')),
              PopupMenuItem(value: Locale('am'), child: Text('አማርኛ')),
              PopupMenuItem(value: Locale('om'), child: Text('Afaan Oromoo')),
            ],
          ),
        ],
      ),
      body: pages[_index],
      bottomNavigationBar: NavigationBar(
        selectedIndex: _index,
        onDestinationSelected: (value) => setState(() => _index = value),
        destinations: [
          NavigationDestination(
            icon: const Icon(Icons.medication_outlined),
            selectedIcon: const Icon(Icons.medication),
            label: AppStrings.t(context, 'explore'),
          ),
          NavigationDestination(
            icon: const Icon(Icons.medical_services_outlined),
            selectedIcon: const Icon(Icons.medical_services),
            label: AppStrings.t(context, 'contactDoctors'),
          ),
          NavigationDestination(
            icon: const Icon(Icons.smart_toy_outlined),
            selectedIcon: const Icon(Icons.smart_toy),
            label: AppStrings.t(context, 'ai'),
          ),
          NavigationDestination(
            icon: const Icon(Icons.person_outline),
            selectedIcon: const Icon(Icons.person),
            label: AppStrings.t(context, 'you'),
          ),
        ],
      ),
    );
  }
}
