import 'package:flutter/material.dart';
import 'package:green_mart_app/core/functions/navigation.dart';
import 'package:green_mart_app/core/styles/app_colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/core/widgets/custom_button.dart';
import 'package:green_mart_app/features/auth/Screens/mobile_number_screen.dart';
import 'package:pinput/pinput.dart';

class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

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
            SizedBox(height: 60),
            Text(
              'Enter verification code',
              style: TextStyles.meduim22.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            Text(
              'We have sent SMS to: 01XXXXXXXXXX',
              style: TextStyles.small14,
            ),
            SizedBox(height: 20),
            Pinput(
              keyboardType: TextInputType.number,
              length: 5,
              showCursor: false,
              defaultPinTheme: PinTheme(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  color: Color(0xffF0F1F2),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: .spaceBetween,
              children: [
                Text(
                  'Resend OTP',
                  style: TextStyles.small14.copyWith(color: Color(0xffF37A20)),
                ),
                TextButton(
                  style: TextButton.styleFrom(padding: EdgeInsets.zero),
                  onPressed: () {
                    pushReplacement(context, MobileNumberScreen());
                  },
                  child: Text(
                    'Change Phone Number',
                    style: TextStyles.small14.copyWith(
                      color: Color(0xff37474F),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            Center(
              child: CustomButton(text: 'Confirm', onPressed: () {}),
            ),
          ],
        ),
      ),
    );
  }
}
