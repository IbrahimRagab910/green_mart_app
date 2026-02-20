import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/app_colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';

class QuantityPriceSection extends StatelessWidget {
  const QuantityPriceSection({super.key, required this.price});
  final double price;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: null, icon: Icon(Icons.remove)),
        Container(
          height: 42,
          width: 42,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(width: 0.9, color: AppColors.borderColor),
          ),
          child: Center(child: Text('1')),
        ),
        IconButton(
          onPressed: null,
          icon: Icon(Icons.add, color: AppColors.primaryColor),
        ),
        Spacer(),
        Text('\$$price', style: TextStyles.meduim22),
      ],
    );
  }
}
