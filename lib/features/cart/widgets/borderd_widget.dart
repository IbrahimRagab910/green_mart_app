import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/app_colors.dart';

class BorderdWidget extends StatelessWidget {
  const BorderdWidget({super.key, required this.icon});

  final Widget icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 35,
      width: 35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(color: AppColors.borderColor),
      ),
      child: Center(child: icon),
    );
  }
}
