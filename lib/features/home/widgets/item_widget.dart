import 'package:flutter/material.dart';
import 'package:green_mart_app/core/functions/navigation.dart';
import 'package:green_mart_app/core/styles/app_colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/features/details/pages/details_screen.dart';
import 'package:green_mart_app/features/home/Date/best_selling_model.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget({super.key, required this.model});
  final ProductModel model;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        pushTo(context, DetailsScreen(model: model,));
      },
      child: Container(
        height: 255,
        width: 160,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              blurRadius: 11,
              offset: Offset(0, 5),
              color: Color(0x00000000).withValues(alpha: 0),
            ),
          ],
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Color(0xffF0F1F2)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Expanded(child: Center(child: Image.asset(model.image))),
              SizedBox(height: 10),
              Text(
                model.name,
                style: TextStyles.meduim22.copyWith(fontSize: 13),
              ),
              SizedBox(height: 5),
              Text('${model.weight} pcs', style: TextStyles.small12),
              SizedBox(height: 10),

              Row(
                mainAxisAlignment: .spaceBetween,
                children: [
                  Text(
                    '\$${model.price}',
                    style: TextStyles.meduim22.copyWith(fontSize: 16),
                  ),
                  SizedBox(
                    height: 38,
                    width: 38,
                    child: FloatingActionButton.small(
                      backgroundColor: AppColors.primaryColor,

                      onPressed: () {},
                      child: Icon(Icons.add, color: AppColors.bgColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
