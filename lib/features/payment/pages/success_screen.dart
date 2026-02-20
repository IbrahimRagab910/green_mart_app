import 'package:flutter/material.dart';
import 'package:green_mart_app/core/constants/app_assets.dart';
import 'package:green_mart_app/core/functions/navigation.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/core/widgets/custom_button.dart';
import 'package:green_mart_app/core/widgets/custom_svg_picture.dart';
import 'package:green_mart_app/features/home/pages/home_screen.dart';
import 'package:green_mart_app/features/main/main_screen.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: .center,
        crossAxisAlignment: .center,
        children: [
          Center(
            child: CustomSvgPicture(path: AppAssets.successSvg, hight: 200),
          ),
          SizedBox(height: 60),
          Text(
            'Your Order has been\n accepted',
            style: TextStyles.meduim22.copyWith(fontSize: 26),
            textAlign: .center,
          ),
          Text(
            'Your items has been placcd and is on\n it’s way to being processed',
            style: TextStyles.small14,
            textAlign: .center,
          ),
          SizedBox(height: 60),
          Center(
            child: CustomButton(
              text: 'Go To Home',
              onPressed: () {
                pushReplacement(context, MainScreen());
              },
            ),
          ),
        ],
      ),
    );
  }
}
