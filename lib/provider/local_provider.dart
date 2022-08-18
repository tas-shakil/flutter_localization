import 'package:flutter/cupertino.dart';
import 'package:localizationflutter/l10n/l10n.dart';
class LocalProvider extends ChangeNotifier {
  Locale _locale = L10n.all[0];

  Locale get locale => _locale;

  void setLocal(Locale locale){
    if(!L10n.all.contains(locale)) return;
     _locale = locale;
    notifyListeners();
  }


  void clearLocale(){
    _locale = L10n.all[0];
    notifyListeners();
  }
}