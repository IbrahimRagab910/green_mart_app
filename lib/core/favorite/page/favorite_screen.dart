import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/app_colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/core/widgets/custom_button.dart';
import 'package:green_mart_app/features/home/Date/best_selling_model.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorite ',
          style: TextStyles.small14.copyWith(
            fontSize: 18,
            fontWeight: FontWeight.w400,
            color: AppColors.blackColor,
          ),
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: Image.asset(
              favoriteProducts[index].image,
              width: 45,
              height: 45,
            ),
            title: Text(
              favoriteProducts[index].name,
              style: TextStyles.small14.copyWith(color: AppColors.blackColor),
            ),
            subtitle: Text(
              '${favoriteProducts[index].weight} ml',
              style: TextStyles.small12,
            ),
            trailing: Text(
              '\$${favoriteProducts[index].price}',
              style: TextStyles.meduim22.copyWith(fontSize: 15),
            ),
          );
        },
        separatorBuilder: (contex, index) {
          return Divider(indent: 20, endIndent: 20);
        },
        itemCount: favoriteProducts.length,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: CustomButton(text: 'Add All To Cart', onPressed: () {}),
      ),
    );
  }
}
