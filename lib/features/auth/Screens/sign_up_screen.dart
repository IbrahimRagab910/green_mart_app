import 'package:flutter/material.dart';
import 'package:green_mart_app/core/functions/navigation.dart';
import 'package:green_mart_app/core/styles/app_colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/core/widgets/custom_button.dart';
import 'package:green_mart_app/features/auth/Screens/login_screen.dart';
import 'package:green_mart_app/features/auth/widgets/custom_input_section.dart';
import 'package:green_mart_app/features/auth/widgets/custom_password_section.dart';
import 'package:green_mart_app/features/auth/widgets/upper_part.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            UpperSection(
              mainText: 'Sign Up',
              discribtionText: 'Enter your credentials to continue',
            ),
            SizedBox(height: 15),
            CustomInputSection(fieldTitle: 'Name', hint: 'Ahmed Ali'),
            SizedBox(height: 10),
            CustomInputSection(fieldTitle: 'Email', hint: 'example@gmail.com'),
            SizedBox(height: 10),
            CustomPasswordSection(),
            SizedBox(height: 20),
            CustomButton(text: 'Sign Up', onPressed: () {}),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: .center,
              children: [
                Text(
                  'Already have an account?',
                  style: TextStyles.meduim22.copyWith(fontSize: 10),
                ),
                TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  onPressed: () {
                    pushReplacement(context, LoginScreen());  
                  },
                  child: Text(
                    'Login',
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
