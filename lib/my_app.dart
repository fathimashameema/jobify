import 'package:flutter/material.dart';
import 'package:jobify/core/themes/theme.dart';
import 'package:jobify/views/bottom_nav_bar.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavBar(),
      theme: AppTheme.lightTheme,
      themeMode: ThemeMode.system,
      darkTheme: AppTheme.darkTheme,
    );
  }
}
