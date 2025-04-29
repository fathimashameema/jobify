import 'package:flutter/material.dart';
import 'package:jobify/core/colors/colors.dart';

class AppTextButtonTheme {
  AppTextButtonTheme._();
  static final darkTextButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      minimumSize: Size(57, 26),

      elevation: 0,
      foregroundColor: AppColors.themeBlue,
      backgroundColor: AppColors.white,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      textStyle: TextStyle(
        fontSize: 14,
        color: AppColors.themeBlue,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
  static final lightTextButtonTheme = TextButtonThemeData(
    style: TextButton.styleFrom(
      minimumSize: Size(57, 26),
      elevation: 0,
      foregroundColor: AppColors.themeBlue,
      backgroundColor: AppColors.white,

      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      textStyle: const TextStyle(
        fontSize: 14,
        color: Colors.black,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
}
