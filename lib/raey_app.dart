import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:provider/provider.dart';

import 'core/l10n/app_strings.dart';
import 'core/l10n/locale_controller.dart';
import 'core/theme/theme_controller.dart';
import 'features/auth/intro_auth_page.dart';

class RaeyApp extends StatelessWidget {
  const RaeyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeController = context.watch<ThemeController>();
    final localeController = context.watch<LocaleController>();

    return MaterialApp(
      title: "ራዕይ (Ra'ey)",
      debugShowCheckedModeBanner: false,
      themeMode: themeController.themeMode,
      theme: ThemeController.lightTheme,
      darkTheme: ThemeController.darkTheme,
      locale: localeController.locale,
      supportedLocales: AppStrings.supportedLocales,
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      home: const IntroAuthPage(),
    );
  }
}
