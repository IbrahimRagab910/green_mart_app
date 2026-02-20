import 'package:flutter/material.dart';
import 'package:green_mart_app/core/constants/app_assets.dart';
import 'package:green_mart_app/core/styles/app_colors.dart';
import 'package:green_mart_app/features/auth/widgets/custom_text_field.dart';
import 'package:green_mart_app/features/home/Date/best_selling_model.dart';
import 'package:green_mart_app/features/home/Date/search_model.dart';
import 'package:green_mart_app/features/home/widgets/item_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new),
        ),
        titleSpacing: 0,
        title: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(right: 10),
            child: CustomTextField(hint: '', prefixIcon: Icon(Icons.search)),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 35, left: 15, right: 15),
        child: GridView.builder(
          itemCount: productList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.75,
          ),
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                border: Border.all(color: AppColors.borderColor),
              ),
              child: ItemWidget(model: productList[index]),
            );
          },
        ),
      ),
    );
  }
}
