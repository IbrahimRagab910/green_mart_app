import 'package:flutter/material.dart';
import 'package:green_mart_app/core/functions/navigation.dart';
import 'package:green_mart_app/core/styles/app_colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/core/widgets/custom_button.dart';
import 'package:green_mart_app/features/auth/Screens/login_screen.dart';
import 'package:green_mart_app/features/auth/Screens/mobile_number_screen.dart';
import 'package:green_mart_app/features/auth/widgets/custom_input_section.dart';
import 'package:green_mart_app/features/auth/widgets/custom_password_section.dart';
import 'package:green_mart_app/features/auth/widgets/upper_part.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  var formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: formkey,
          child: SingleChildScrollView(
            child: Column(
              children: [
                UpperSection(
                  mainText: 'Sign Up',
                  discribtionText: 'Enter your credentials to continue',
                ),
                SizedBox(height: 15),
                CustomInputSection(
                  fieldTitle: 'Name',
                  hint: 'Ahmed Ali',
                  validator: (value) {
                    if (value?.isEmpty == true) {
                      return 'this feild is required';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                CustomInputSection(
                  fieldTitle: 'Email',
                  hint: 'example@gmail.com',
                  validator: (value) {
                    if (value?.isEmpty == true) {
                      return 'this feild is required';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                CustomPasswordSection(
                  validator: (value) {
                    if (value?.isEmpty == true) {
                      return 'this feild is required';
                    } else if ((value?.length ?? 0) < 6) {
                      return 'password must be at least 6 characters';
                    }
                  },
                ),
                SizedBox(height: 20),
                CustomButton(
                  text: 'Sign Up',
                  onPressed: () {
                    if (formkey.currentState?.validate() == true) {
                      pushTo(context, MobileNumberScreen());
                    }
                  },
                ),
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
        ),
      ),
    );
  }
}
