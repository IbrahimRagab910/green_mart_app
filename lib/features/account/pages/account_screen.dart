import 'package:flutter/material.dart';
import 'package:green_mart_app/core/constants/app_assets.dart';
import 'package:green_mart_app/core/functions/navigation.dart';
import 'package:green_mart_app/core/styles/app_colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/core/widgets/custom_button.dart';
import 'package:green_mart_app/features/account/widgets/custom_list_tile.dart';
import 'package:green_mart_app/features/payment/pages/success_screen.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 30),
          ListTile(
            leading: CircleAvatar(
              foregroundImage: AssetImage(AppAssets.profile),
              radius: 28,
            ),
            title: Row(
              children: [
                Text(
                  'Ibrahim Ragab',
                  style: TextStyles.meduim22.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Icon(
                  Icons.edit_outlined,
                  color: AppColors.primaryColor,
                  size: 18,
                ),
              ],
            ),
            subtitle: Text('Iragab068@gmail.com', style: TextStyles.small14),
          ),
          Divider(height: 40),
          CustomListTile(text: 'Orders', imagePath: AppAssets.ordersSvg),
          CustomListTile(text: 'My Details', imagePath: AppAssets.detailsSvg),
          CustomListTile(
            text: 'Delivery Address',
            imagePath: AppAssets.deliverySvg,
          ),
          CustomListTile(
            text: 'Payment Methods',
            imagePath: AppAssets.paymentMethodSvg,
          ),
          CustomListTile(text: 'Promo Cord', imagePath: AppAssets.promoSvg),
          CustomListTile(
            text: 'Notifecations ',
            imagePath: AppAssets.notificationsSvg,
          ),
          CustomListTile(text: 'Help ', imagePath: AppAssets.helpSvg),
          CustomListTile(text: 'About  ', imagePath: AppAssets.aboutSvg),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: CustomButton(
          text: 'log out',
          onPressed: () {
            pushTo(context, SuccessScreen());
          },
          textStyle: TextStyles.buttonTextStyle.copyWith(
            color: AppColors.primaryColor,
          ),
          backgroundColor: AppColors.fillColr,
        ),
      ),
    );
  }
}
