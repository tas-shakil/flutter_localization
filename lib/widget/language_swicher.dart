import 'package:flutter/material.dart';
import 'package:localizationflutter/l10n/l10n.dart';
import 'package:localizationflutter/provider/local_provider.dart';
import 'package:provider/provider.dart';

class LanguageSwitcher extends StatefulWidget {
  @override
  State<LanguageSwitcher> createState() => _LanguageSwitcherState();
}

class _LanguageSwitcherState extends State<LanguageSwitcher> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<LocalProvider>(context);

    return DropdownButtonHideUnderline(
        child: DropdownButton<dynamic>(
      dropdownColor: Colors.black,
      value: provider.locale,
      items: L10n.all.map((locale) {
        final lan = L10n.getLang(locale.languageCode);
        return DropdownMenuItem(
          value: locale,
          child: Text(
            lan,
            style: const TextStyle(color: Colors.white),
          ),
          onTap: () {
            provider.setLocal(locale);
          },
        );
      }).toList(),
      onChanged: (value) {},
    ));
  }
}
