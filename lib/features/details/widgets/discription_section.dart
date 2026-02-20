import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/app_colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/features/details/pages/details_screen.dart';

class DiscriptionSection extends StatelessWidget {
  const DiscriptionSection({
    super.key,
    required this.widget,
  });

  final DetailsScreen widget;

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      title: Text(
        'Product Detail',
        style: TextStyles.small14.copyWith(
          color: AppColors.blackColor,
          fontWeight: FontWeight.bold,
        ),
      ),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Text(
            widget.model.description,
            style: TextStyles.small14,
          ),
        ),
      ],
    );
  }
}
