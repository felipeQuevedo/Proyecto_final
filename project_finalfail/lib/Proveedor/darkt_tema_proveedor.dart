import 'package:flutter/cupertino.dart';
import 'package:project_final/servicios/dark_theme_pref.dart';

class DarkTemaProveedor with ChangeNotifier {
    DarkThemePrefs darkThemePrefs = DarkThemePrefs();
  bool _darktema = false ;
  bool get getDarktema => _darktema;

  set setDarkTema (bool value){
    _darktema = value;
    darkThemePrefs.setDarkTheme(value);
    notifyListeners();
  }
}