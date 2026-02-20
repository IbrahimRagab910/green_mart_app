import 'package:flutter/material.dart';
import 'package:green_mart_app/core/constants/app_fonts.dart';
import 'package:green_mart_app/core/styles/app_colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';

abstract class AppThemes {
  static ThemeData get lightTheme => ThemeData(
    appBarTheme: AppBarTheme(backgroundColor: AppColors.bgColor),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      elevation: 0,
      selectedLabelStyle: TextStyles.lableStyle,
      unselectedLabelStyle: TextStyles.lableStyle,
      selectedItemColor: AppColors.primaryColor,
      type: BottomNavigationBarType.fixed,
      backgroundColor: Colors.transparent,
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryColor,
      onSurface: AppColors.blackColor,
    ),
    fontFamily: AppFonts.poppins,
    scaffoldBackgroundColor: AppColors.bgColor,
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: TextStyles.small14,
      fillColor: AppColors.greyColor,
      filled: true,
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide.none,
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide(color: AppColors.errorColor),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide(color: AppColors.errorColor),
      ),
    ),
  );
}
