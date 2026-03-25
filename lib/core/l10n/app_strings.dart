import 'package:flutter/material.dart';

class AppStrings {
  static const supportedLocales = [
    Locale('en'),
    Locale('am'),
    Locale('om'),
  ];

  static const Map<String, Map<String, String>> _strings = {
    'en': {
      'appName': "ራዕይ (Ra'ey)",
      'tagline': 'Medicine for everyone, everywhere in Ethiopia',
      'explore': 'Explore',
      'contactDoctors': 'Contact Doctors',
      'ai': 'AI Assistance',
      'you': 'You',
      'nearby': 'Nearby Providers',
      'developer': 'Developer: Mikiyas Teshome',
      'pay': 'Proceed with Telebirr Payment',
    },
    'am': {
      'appName': 'ራዕይ',
      'tagline': 'መድሀኒት ለሁሉም በመላ ኢትዮጵያ',
      'explore': 'መፈለጊያ',
      'contactDoctors': 'ዶክተሮች',
      'ai': 'AI እገዛ',
      'you': 'እርስዎ',
      'nearby': 'ቅርብ አቅራቢዎች',
      'developer': 'አበልጻጊ: ሚኪያስ ተሾመ',
      'pay': 'በቴሌብር ይክፈሉ',
    },
    'om': {
      'appName': "ራዕይ (Ra'ey)",
      'tagline': 'Qoricha nama hundaaf guutuu Itoophiyaa',
      'explore': 'Sakatta’i',
      'contactDoctors': 'Hakimoota qunnami',
      'ai': 'Gargaarsa AI',
      'you': 'Ati',
      'nearby': 'Dhiyeenya keetti argaman',
      'developer': 'Developer: Mikiyas Teshome',
      'pay': 'Telebirr’n kafali',
    },
  };

  static String t(BuildContext context, String key) {
    final code = Localizations.localeOf(context).languageCode;
    return _strings[code]?[key] ?? _strings['en']![key] ?? key;
  }
}
