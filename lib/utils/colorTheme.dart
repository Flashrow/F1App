import 'package:flutter/material.dart';

class ColorTheme {
  ColorTheme();

  ThemeData get themeData {
    TextTheme txtTheme = ThemeData.light().textTheme;
    Color txtColor = txtTheme.bodyText1!.color!;
    ColorScheme colorScheme = ColorScheme(
        brightness: Brightness.light,
        primary: Color.fromRGBO(166, 3, 17, 1),
        primaryVariant: Color.fromRGBO(166, 3, 17, 1),
        secondary: Color.fromRGBO(242, 212, 61, 1),
        secondaryVariant: Color.fromRGBO(242, 212, 61, 1),
        background: Color.fromRGBO(240, 244, 248, 1),
        surface: Color.fromRGBO(13, 13, 13, 1),
        onBackground: txtColor,
        onSurface: txtColor,
        onError: Colors.white,
        onPrimary: Colors.white,
        onSecondary: Colors.white,
        error: Colors.red.shade400);

    var t = ThemeData.from(textTheme: txtTheme, colorScheme: colorScheme);
    return t;
  }
}