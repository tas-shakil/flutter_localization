import 'package:flutter/material.dart';
import 'package:localizationflutter/l10n/l10n.dart';

class LanguagePicker extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final locale = Localizations.localeOf(context);
    final language = L10n.getLang(locale.languageCode);
    return Text(language);
  }

}