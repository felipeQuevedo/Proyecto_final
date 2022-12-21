import 'package:flutter/material.dart';


class Styles {
  static ThemeData themeData(bool EsOscuro, BuildContext context){
    return ThemeData(
      scaffoldBackgroundColor:
        EsOscuro ? const Color(0xFD015D01) : const Color(0xff6db065),
      primaryColor: Colors.green,
      colorScheme: ThemeData().colorScheme.copyWith(
        secondary:
          EsOscuro ? const Color(0xFD009B00) :const Color(0xff9fea93),
        brightness: EsOscuro ? Brightness.dark : Brightness.light,
      ),
      cardColor:
      EsOscuro ? const Color(0xFD009B00) :const Color(0xff9fea93),
      canvasColor: EsOscuro ? Colors.black : Colors.grey[50],
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
        colorScheme: EsOscuro
            ? const ColorScheme.dark()
            : const ColorScheme.light()
      ),
    );
  }
}