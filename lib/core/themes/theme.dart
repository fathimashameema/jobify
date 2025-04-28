import 'package:flutter/material.dart';
import 'package:jobify/core/colors/colors.dart';
import 'package:jobify/core/themes/custom_themes/search_bar_theme.dart';
import 'package:jobify/core/themes/custom_themes/switch_theme.dart';
import 'package:jobify/core/themes/custom_themes/text_button_theme.dart';
import 'package:jobify/core/themes/custom_themes/text_selection_theme.dart';
import 'package:jobify/core/themes/custom_themes/text_theme.dart';

class AppTheme {
  AppTheme._();

  static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.white,
    textTheme: AppTexttheme.lightTextTheme,
    primaryColor: AppColors.black,
    searchBarTheme: AppSearchBarTheme.lightSearchBarTheme,
    textSelectionTheme: AppTextSelectionTheme.lightTextSelectionTheme,
    switchTheme: AppSwitchTheme.lightSwitchTheme,
    textButtonTheme: AppTextButtonTheme.lightTextButtonTheme,
  );
  static ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: AppColors.black,
    textTheme: AppTexttheme.darkTextTheme,
    primaryColor: AppColors.white,
    searchBarTheme: AppSearchBarTheme.darkSearchBarTheme,
    textSelectionTheme: AppTextSelectionTheme.darkTextSelectionTheme,
    switchTheme: AppSwitchTheme.darkSwitchTheme,
    textButtonTheme: AppTextButtonTheme.darkTextButtonTheme,
  );
}
