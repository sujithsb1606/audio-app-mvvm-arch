import 'package:flutter/material.dart';
import 'package:riverpod_tutorial/core/theme/app_pallete.dart';

class AppTheme {

  static InputBorder _border(Color color) => OutlineInputBorder(
        borderSide: BorderSide(color: color, width: 3),
        borderRadius: .circular(10)
      );

  static final darkTheme = ThemeData.dark().copyWith(
    scaffoldBackgroundColor: Pallete.backgroundColor,
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: .all(27),
      enabledBorder: _border(Pallete.borderColor),
      focusedBorder: _border(Pallete.gradient2),
      
    ),
  );
}
