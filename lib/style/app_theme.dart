import 'package:flutter/material.dart';

ThemeData get lightTheme => ThemeData(
    useMaterial3: false,
    textTheme: const TextTheme(
        displayMedium: TextStyle(
      color: Color(0xffbebebe),
      fontSize: 14,
    )),
    appBarTheme:
        const AppBarTheme(elevation: 0.0, backgroundColor: Color(0xffffffff)),
    scaffoldBackgroundColor: const Color(0xffffffff),
    colorScheme: const ColorScheme.light(
        primary: Color(0xFFFF006B),
        primaryContainer: Color(0xffffe6f0),
        secondary: Color(0xffffffff),
        onSecondary: Color(0xff000000),
        tertiary: Color(0xffededed),
        onTertiary: Color(0xfff4f4f4)));

ThemeData get darkTheme => ThemeData(
    useMaterial3: false,
    textTheme: const TextTheme(
        displayMedium: TextStyle(
      color: Color(0xffbebebe),
      fontSize: 14,
    )),
    appBarTheme:
        const AppBarTheme(elevation: 0.0, backgroundColor: Color(0xff101010)),
    scaffoldBackgroundColor: const Color(0xff000000),
    colorScheme: const ColorScheme.dark(
        primary: Color(0xFFFF006B),
        primaryContainer: Color(0xff444444),
        secondary: Color(0xff000000),
        onSecondary: Color(0xffffffff),
        tertiary: Color(0xff232323),
        onTertiary: Color(0xff101010)));
