import 'package:flutter/material.dart';
import 'package:green_mart_app/core/functions/navigation.dart';
import 'package:green_mart_app/core/styles/app_colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/features/auth/widgets/custom_text_field.dart';
import 'package:green_mart_app/features/explore/pages/category_screen.dart';
import 'package:green_mart_app/features/home/Date/best_selling_model.dart';
import 'package:green_mart_app/features/home/Date/category_model.dart';

class ExploreScreen extends StatefulWidget {
  const ExploreScreen({super.key});

  @override
  State<ExploreScreen> createState() => _ExploreScreenState();
}

class _ExploreScreenState extends State<ExploreScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Find Products',
          style: TextStyles.meduim22.copyWith(fontSize: 16),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: CustomTextField(
              hint: 'search store',
              prefixIcon: Icon(Icons.search, size: 18),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: GridView.builder(
                itemCount: categoryList.length,

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  mainAxisExtent: 170,
                ),
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      pushTo(context, CategoryScreen(id: "1"));
                    },
                    child: Container(
                      height: 170,
                      width: 160,
                      decoration: BoxDecoration(
                        color: catigoryFillColors[index],
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(
                          color: catigoryFillColors[index].withValues(alpha: 1),
                          width: 0.9,
                        ),
                      ),
                      child: Column(
                        children: [
                          Expanded(
                            child: Image.asset(categoryList[index].image),
                          ),
                          Center(
                            child: Text(
                              categoryList[index].name,
                              style: TextStyles.meduim22.copyWith(fontSize: 15),
                            ),
                          ),
                          SizedBox(height: 10),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
