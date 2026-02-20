import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/app_colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/core/widgets/custom_svg_picture.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.imagePath,
    required this.text,
  });
  final String imagePath;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        mainAxisSize: .min,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomSvgPicture(path: imagePath),
                SizedBox(width: 15),
                Text(text, style: TextStyles.meduim22.copyWith(fontSize: 16)),
                Spacer(),
                Icon(Icons.chevron_right, color: AppColors.blackColor),
              ],
            ),
          ),
          Divider(height: 25),
        ],
      ),
    );
  }
}
