import 'package:flutter/material.dart';
import 'package:green_mart_app/core/constants/app_assets.dart';
import 'package:green_mart_app/core/styles/app_colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/features/auth/widgets/custom_text_field.dart';
import 'package:green_mart_app/features/home/Date/best_selling_model.dart';
import 'package:green_mart_app/features/home/widgets/item_widget.dart';

class BestSellingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 15),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              Text(
                'Best Selling',
                style: TextStyles.meduim22.copyWith(fontSize: 19),
              ),
              TextButton(
                style: TextButton.styleFrom(padding: EdgeInsets.zero),
                onPressed: () {},
                child: Text(
                  'see all ',
                  style: TextStyle(
                    color: AppColors.primaryColor,
                    fontFamily: 'Poppins',
                    fontSize: 11,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          children: [
            SizedBox(
              height: 255,
              child: ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ItemWidget(model: productList[index]);
                },
                separatorBuilder: (context, index) {
                  return SizedBox(width: 9);
                },
                itemCount: productList.length,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
