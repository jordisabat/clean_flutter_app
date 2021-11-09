import 'package:flutter/material.dart';

ThemeData makeAppTheme() {
  final primaryColor = Color.fromRGBO(130, 14, 79, 1);
  final primaryColorDark = Color.fromRGBO(96, 0, 39, 1);
  final primaryColorLight = Color.fromRGBO(188, 71, 123, 1);
  final ButtonStyle flatButtonStyle = TextButton.styleFrom(
    primary: Colors.black87,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
    ),
  );

  final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
    onPrimary: Colors.white,
    primary: primaryColorDark,
    minimumSize: Size(88, 36),
    padding: EdgeInsets.symmetric(horizontal: 16),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
  );

  return ThemeData(
    primaryColor: primaryColor,
    primaryColorDark: primaryColorDark,
    primaryColorLight: primaryColorLight,
    backgroundColor: Colors.white,
    textTheme: TextTheme(
        headline1: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: primaryColorDark)),
    inputDecorationTheme: InputDecorationTheme(
        enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: primaryColorLight)),
        focusedBorder:
            UnderlineInputBorder(borderSide: BorderSide(color: primaryColor)),
        alignLabelWithHint: true),
    textButtonTheme: TextButtonThemeData(style: flatButtonStyle),
    elevatedButtonTheme: ElevatedButtonThemeData(style: raisedButtonStyle),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: primaryColor),
  );
}
