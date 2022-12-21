import 'package:shared_preferences/shared_preferences.dart';

class DarkThemePrefs {
  static const Estado_tema = "EstadoDeTema";
  setDarkTheme(bool value) async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setBool(Estado_tema, value);
  }
  Future <bool> getTheme()async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool(Estado_tema) ?? false;
  }
}