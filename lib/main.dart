import 'package:flutter/material.dart';
import 'package:green_mart_app/core/constants/app_fonts.dart';
import 'package:green_mart_app/core/styles/app_colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/core/styles/themes.dart';
import 'package:green_mart_app/features/intro/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) =>
          SafeArea(top: false, bottom: true, child: child!),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      theme: AppThemes.lightTheme,
    );
  }
}
