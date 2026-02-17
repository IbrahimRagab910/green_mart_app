import 'package:flutter/material.dart';
import 'package:green_mart_app/core/constants/app_assets.dart';
import 'package:green_mart_app/core/functions/navigation.dart';
import 'package:green_mart_app/core/styles/app_colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/core/widgets/custom_button.dart';
import 'package:green_mart_app/core/widgets/custom_svg_picture.dart';
import 'package:green_mart_app/features/auth/Screens/login_screen.dart';
import 'package:green_mart_app/features/auth/Screens/sign_up_screen.dart';
import 'package:green_mart_app/features/home/pages/home_screen.dart';
import 'package:green_mart_app/features/main/main_screen.dart';

class WelcomScareen extends StatelessWidget {
  const WelcomScareen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppAssets.welcom,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Align(
            alignment: Alignment.center,
            child: Column(
              mainAxisAlignment: .center,
              crossAxisAlignment: .center,
              children: [
                SizedBox(height: 300),

                CustomSvgPicture(
                  path: AppAssets.carrotSvg,
                  color: AppColors.bgColor,
                ),
                Text(
                  'Welcom\nto our Store',
                  style: TextStyles.welcomStyle,
                  textAlign: .center,
                ),
                Text(
                  'Ger your groceries in as fast as one hour',
                  style: TextStyles.tagLineStyle,
                ),
                SizedBox(height: 39),
                CustomButton(
                  text: 'Get Started',
                  onPressed: () {
                    pushReplacement(context, MainScreen());
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
