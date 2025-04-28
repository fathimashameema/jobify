import 'package:flutter/material.dart';
import 'package:jobify/core/colors/colors.dart';

class AppTextSelectionTheme {
  AppTextSelectionTheme._();
  static TextSelectionThemeData lightTextSelectionTheme =
      TextSelectionThemeData(cursorColor: AppColors.grey);

  static TextSelectionThemeData darkTextSelectionTheme = TextSelectionThemeData(
    cursorColor: AppColors.grey,
  );
}
