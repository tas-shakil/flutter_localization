import 'package:flutter/cupertino.dart';

class L10n {
  static final all = [
    const Locale('en'),
    const Locale('ar'),
    const Locale('hi'),
    const Locale('es'),
    const Locale('bn'),
  ];

  static String getLang(String code) {
    switch (code) {
      case 'en':
        return "English";
      case 'ar':
        return 'عربى';
      case 'hi':
        return "हिन्दी";
      case 'bn':
        return "বাংলা";
      case 'es':
        return "hispana";
      default:
        return 'English';
    }
  }
}
