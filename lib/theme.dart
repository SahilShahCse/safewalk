import 'package:flutter/material.dart';

ThemeData darkTheme = ThemeData(
  colorScheme: ColorScheme.dark(
    background: Color(0xf030303),
    primary: Colors.white,
    secondary: Colors.white,
  ),
  textTheme: TextTheme(
    bodyLarge: TextStyle(fontWeight: FontWeight.bold , fontSize: 17 , color: Color(
        0xfff6f5f5)),
    bodyMedium: TextStyle(fontWeight: FontWeight.w500 , fontSize: 15 , color: Colors.white),
    bodySmall: TextStyle(fontWeight: FontWeight.w300 , fontSize: 12 , color: Colors.white),
  ),
);