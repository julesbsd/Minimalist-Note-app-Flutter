import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    background: Colors.grey.shade300,
    primary: Colors.grey.shade200,
    secondary: Colors.grey.shade400,
    inversePrimary: Colors.grey.shade800,
    shadow: Color.fromARGB(255, 182, 181, 181)
  ),
);

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Color(0xFF212121),
    primary: Color(0xFF373737),
    secondary: Colors.grey.shade700,
    inversePrimary: Colors.grey.shade300,
    shadow: Color(0xFF1A1A1A)
  ),
);