import 'package:flutter/material.dart';
import 'package:green_mart_app/core/constants/app_assets.dart';
import 'package:green_mart_app/core/styles/app_colors.dart';
import 'package:green_mart_app/core/widgets/custom_svg_picture.dart';
import 'package:green_mart_app/features/home/pages/home_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    HomeScreen(),
    Center(child: Text('explore Screen')),
    Center(child: Text('cart Screen')),
    Center(child: Text('favorite Screen')),
    Center(child: Text('account Screen')),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          color: AppColors.bgColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 33,
              spreadRadius: 0,
              offset: Offset(0, -5),
              color: Color(0xff555E58).withValues(alpha: 50),
            ),
          ],
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index) {
            setState(() {
              currentIndex = index;
            });
          },

          items: [
            BottomNavigationBarItem(
              activeIcon: CustomSvgPicture(
                path: AppAssets.storeSvg,
                color: AppColors.primaryColor,
              ),
              icon: CustomSvgPicture(path: AppAssets.storeSvg),
              label: 'Shop',
            ),
            BottomNavigationBarItem(
              activeIcon: CustomSvgPicture(
                path: AppAssets.exploreSvg,
                color: AppColors.primaryColor,
              ),
              icon: CustomSvgPicture(path: AppAssets.exploreSvg),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              activeIcon: CustomSvgPicture(
                path: AppAssets.cartSvg,
                color: AppColors.primaryColor,
              ),
              icon: CustomSvgPicture(path: AppAssets.cartSvg),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              activeIcon: CustomSvgPicture(
                path: AppAssets.favoriteSvg,
                color: AppColors.primaryColor,
              ),
              icon: CustomSvgPicture(path: AppAssets.favoriteSvg),
              label: 'Favorite',
            ),
            BottomNavigationBarItem(
              activeIcon: CustomSvgPicture(
                path: AppAssets.accountSvg,
                color: AppColors.primaryColor,
              ),
              icon: CustomSvgPicture(path: AppAssets.accountSvg),
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
