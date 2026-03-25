import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/l10n/locale_controller.dart';
import 'core/theme/theme_controller.dart';
import 'raey_app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => ThemeController()),
        ChangeNotifierProvider(create: (_) => LocaleController()),
      ],
      child: const RaeyApp(),
    ),
  );
}
