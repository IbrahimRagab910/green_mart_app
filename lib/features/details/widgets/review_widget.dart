import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:green_mart_app/core/styles/app_colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Review',
          style: TextStyles.small14.copyWith(color: AppColors.blackColor),
        ),
        Spacer(),
        RatingBar.builder(
          itemSize: 18,
          initialRating: 3,
          minRating: 1,
          direction: Axis.horizontal,
          allowHalfRating: false,
          itemCount: 5,
          itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
          itemBuilder: (context, _) => Icon(Icons.star, color: Colors.amber),
          onRatingUpdate: (_) {},
        ),
      ],
    );
  }
}
