import 'package:flutter/material.dart';
import 'package:jobify/core/colors/colors.dart';

class AppSwitchTheme {
  AppSwitchTheme._();

  static SwitchThemeData lightSwitchTheme = SwitchThemeData(
    thumbColor: WidgetStateProperty.all(AppColors.black),
    trackColor: WidgetStateProperty.all(AppColors.white),

    thumbIcon: WidgetStateProperty.all(
      Icon(Icons.circle, size: 16, color: AppColors.black),
    ),
    trackOutlineWidth: WidgetStateProperty.all(0),
    padding: EdgeInsets.all(0),
  );
  static SwitchThemeData darkSwitchTheme = SwitchThemeData(
    thumbColor: WidgetStateProperty.all(AppColors.black),
    trackColor: WidgetStateProperty.all(AppColors.white),

    trackOutlineWidth: WidgetStateProperty.all(0),
    padding: EdgeInsets.all(0),
    thumbIcon: WidgetStateProperty.all(
      Icon(Icons.circle, size: 16, color: AppColors.black),
    ),
  );
}
