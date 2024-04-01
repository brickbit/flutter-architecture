
import 'package:flutter/material.dart';

ThemeData buildThemeData() {
  final ThemeData theme = ThemeData();
  return theme.copyWith(
    primaryColor: Colors.black,
    colorScheme: theme.colorScheme.copyWith(secondary: Colors.amberAccent),
    textTheme: theme.textTheme
      .copyWith(
        headlineSmall: theme.textTheme.headlineSmall
    ).apply(
      bodyColor: Colors.black,
      displayColor: Colors.black
    ),
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: theme.appBarTheme.copyWith(backgroundColor: Colors.transparent, elevation: 0),
    inputDecorationTheme: theme.inputDecorationTheme.copyWith(
      fillColor: const Color(0xFF434343),
      focusColor: const Color(0xFF7E7E7E),
      border: InputBorder.none,
      suffixIconColor: Colors.white,
      filled: true,
      errorMaxLines: 1,
      errorStyle: const TextStyle(
        fontSize: 0,
        height: 0
      ),
    ),
    iconTheme: theme.iconTheme.copyWith(color: Colors.white),
    textSelectionTheme: theme.textSelectionTheme.copyWith(cursorColor: Colors.white),
  );
}