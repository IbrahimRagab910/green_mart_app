import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/app_colors.dart';

class TextStyles {
  static TextStyle small14 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    fontSize: 12,
    color: Color(0xff7C7C7C),
  );
  static TextStyle small12 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w400,
    fontSize: 10,
    color: Color(0xff7C7C7C),
  );
  static TextStyle meduim22 = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 22,
    color: Color(0xff181725),
  );
  static TextStyle welcomStyle = TextStyle(
    color: AppColors.bgColor,
    fontSize: 43,
    fontWeight: FontWeight.w600,
  );
  static TextStyle TagLineStyle = TextStyle(
    color: Colors.grey,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
  static TextStyle buttonTextStyle = TextStyle(
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w600,
    fontSize: 16,
    color: Color(0xffFCFCFC),
  );
}
