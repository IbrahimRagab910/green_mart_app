import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/app_colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, required this.onPressed,this.backgroundColor, this.textStyle  });
  final String text;
  final Function() onPressed;
  final Color? backgroundColor ;
  final TextStyle? textStyle ;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(250, 50),
        backgroundColor: backgroundColor ?? AppColors.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      onPressed: onPressed,
      child: Text(text, style: textStyle ?? TextStyles.buttonTextStyle),
    );
  }
}
