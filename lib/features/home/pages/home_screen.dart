import 'package:flutter/material.dart';
import 'package:green_mart_app/core/constants/app_assets.dart';
import 'package:green_mart_app/core/functions/navigation.dart';
import 'package:green_mart_app/core/styles/app_colors.dart';
import 'package:green_mart_app/core/widgets/custom_svg_picture.dart';
import 'package:green_mart_app/features/auth/widgets/custom_text_field.dart';
import 'package:green_mart_app/features/home/widgets/best_selling_widget.dart';
import 'package:green_mart_app/features/home/widgets/exclusives_widget.dart';
import 'package:green_mart_app/features/search/search_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: CustomSvgPicture(
          hight: 40,
          path: AppAssets.logoSvg,
          color: AppColors.primaryColor,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: .start,
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: GestureDetector(
                onTap: () {
                  pushTo(context, SearchScreen());
                },
                child: CustomTextField(
                  enabled: false,
                  hint: 'Search Store',
                  prefixIcon: Icon(Icons.search),
                ),
              ),
            ),
            ExclusivesWidget(),
            BestSellingWidget(),
          ],
        ),
      ),
    );
  }
}
