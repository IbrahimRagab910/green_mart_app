import 'package:flutter/material.dart';
import 'package:green_mart_app/core/functions/navigation.dart';
import 'package:green_mart_app/core/styles/app_colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/core/widgets/custom_button.dart';
import 'package:green_mart_app/features/auth/Screens/sign_up_screen.dart';
import 'package:green_mart_app/features/auth/widgets/custom_input_section.dart';
import 'package:green_mart_app/features/auth/widgets/custom_password_section.dart';
import 'package:green_mart_app/features/auth/widgets/upper_part.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            UpperSection(
              mainText: 'Login',
              discribtionText: 'Enter your Email and Password',
            ),
            CustomInputSection(fieldTitle: 'Email', hint: 'example@gmail.com'),
            SizedBox(height: 15),
            CustomPasswordSection(),
            Align(
              alignment: .bottomRight,
              child: TextButton(
                style: TextButton.styleFrom(
                  enableFeedback: false,
                  overlayColor: AppColors.bgColor,
                ),
                onPressed: () {},
                child: Text(
                  'Forgot Password?',
                  style: TextStyles.meduim22.copyWith(fontSize: 11),
                ),
              ),
            ),
            SizedBox(height: 2),
            CustomButton(text: 'login', onPressed: () {}),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: .center,
              children: [
                Text(
                  'Don’t have an account?',
                  style: TextStyles.meduim22.copyWith(fontSize: 10),
                ),
                TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.all(0)),
                  onPressed: () {
                    pushReplacement(context, SignUpScreen());
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyles.meduim22.copyWith(
                      fontSize: 10,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
