import 'package:flutter/material.dart';
import 'package:green_mart_app/core/constants/app_assets.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/core/widgets/custom_svg_picture.dart';

class UpperSection extends StatelessWidget {
  const UpperSection({
    super.key,
    required this.mainText,
    required this.discribtionText,
  });
  final String mainText;
  final String discribtionText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: .start,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 60),
        Row(
          mainAxisAlignment: .center,
          children: [CustomSvgPicture(path: AppAssets.carrotSvg)],
        ),
        SizedBox(height: 30),
        Text(mainText, style: TextStyles.meduim22),
        SizedBox(height: 10),
        Text(discribtionText, style: TextStyles.small14),
        SizedBox(height: 25),
      ],
    );
  }
}
