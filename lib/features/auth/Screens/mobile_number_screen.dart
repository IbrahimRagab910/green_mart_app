import 'package:flutter/material.dart';
import 'package:green_mart_app/core/functions/navigation.dart';
import 'package:green_mart_app/core/styles/app_colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/core/widgets/custom_button.dart';
import 'package:green_mart_app/features/auth/Screens/verification_screen.dart';
import 'package:green_mart_app/features/auth/widgets/custom_text_field.dart';

class MobileNumberScreen extends StatelessWidget {
  const MobileNumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.arrow_back_ios, color: AppColors.blackColor),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: .start,
          children: [
            SizedBox(height: 80),
            Text(
              'Enter your mobile number',
              style: TextStyles.meduim22.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              'We need to verify you. We will send you a one time verification code.',
              style: TextStyles.small14,
            ),
            SizedBox(height: 45),
            CustomTextField(
              hint: '01xxxxxxxxxx',
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 40),
            CustomButton(
              text: 'nex',
              onPressed: () {
                pushTo(context, VerificationScreen());
              },
            ),
            SizedBox(height: 24),
            Align(
              alignment: .center,
              child: Text(
                'Resend confirmation code (1:15)',
                style: TextStyle(fontSize: 13, fontWeight: FontWeight.w300),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
