import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/app_colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';

class NutritionsWidget extends StatelessWidget {
  const NutritionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Nutritions',
          style: TextStyles.small14.copyWith(color: AppColors.blackColor),
        ),
        Spacer(),
        Text('100gr', style: TextStyles.small12),
        IconButton(onPressed: null, icon: Icon(Icons.chevron_right)),
      ],
    );
  }
}
