import 'package:flutter/material.dart';
import 'package:jobify/core/colors/colors.dart';

class AppSearchBarTheme {
  AppSearchBarTheme._();

  static SearchBarThemeData lightSearchBarTheme = SearchBarThemeData(
    backgroundColor: WidgetStateProperty.all(AppColors.white.withAlpha(50)),
    surfaceTintColor: WidgetStateProperty.all(AppColors.lightGrey),
    elevation: WidgetStateProperty.all(0),
    shadowColor: WidgetStateProperty.all(AppColors.lightGrey),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: AppColors.lightGrey),
      ),
    ),
    side: WidgetStateProperty.all(BorderSide(color: AppColors.lightGrey)),
    hintStyle: WidgetStateProperty.all(TextStyle(color: AppColors.lightGrey)),
    textStyle: WidgetStateProperty.all(TextStyle(color: AppColors.lightGrey)),
    constraints: const BoxConstraints(minHeight: 48),
    padding: WidgetStateProperty.all(
      const EdgeInsets.symmetric(horizontal: 16),
    ),
  );

  static SearchBarThemeData darkSearchBarTheme = SearchBarThemeData(
    backgroundColor: WidgetStateProperty.all(AppColors.white.withAlpha(50)),
    surfaceTintColor: WidgetStateProperty.all(AppColors.lightGrey),
    elevation: WidgetStateProperty.all(0),
    shadowColor: WidgetStateProperty.all(AppColors.lightGrey),
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
        side: BorderSide(color: AppColors.lightGrey),
      ),
    ),
    side: WidgetStateProperty.all(BorderSide(color: AppColors.lightGrey)),
    hintStyle: WidgetStateProperty.all(TextStyle(color: AppColors.lightGrey)),
    textStyle: WidgetStateProperty.all(TextStyle(color: AppColors.lightGrey)),
    constraints: const BoxConstraints(minHeight: 48),
    padding: WidgetStateProperty.all(
      const EdgeInsets.symmetric(horizontal: 16),
    ),
  );
}
