import 'package:green_mart_app/core/constants/app_assets.dart';

class SearchModel {
  final String name;
  final double price;
  final String image;
  final String description;
  final double quantity;
  SearchModel({
    required this.name,
    required this.price,
    required this.image,
    required this.description,
    required this.quantity,
  });
}

List<SearchModel> searchList = [
  SearchModel(
    name: 'Diet Coke',
    price: 4.99,
    image: AppAssets.diet,
    description: 'Fresh organic bananas, perfect for smoothies and snacks.',
    quantity: 1.0,
  ),
  SearchModel(
    name: 'Sprite Can',
    price: 3.49,
    image: AppAssets.sprite,
    description: 'Crisp and juicy red apples, great for pies and salads.',
    quantity: 1.0,
  ),
  SearchModel(
    name: 'Apple & Grape Juice',
    price: 2.99,
    image: AppAssets.apple,
    description: 'Crunchy carrots, ideal for soups and roasting.',
    quantity: 1.0,
  ),
   SearchModel(
    name: 'Diet Coke',
    price: 4.99,
    image: AppAssets.diet,
    description: 'Fresh organic bananas, perfect for smoothies and snacks.',
    quantity: 1.0,
  ),
  SearchModel(
    name: 'Sprite Can',
    price: 3.49,
    image: AppAssets.sprite,
    description: 'Crisp and juicy red apples, great for pies and salads.',
    quantity: 1.0,
  ),
  SearchModel(
    name: 'Apple & Grape Juice',
    price: 2.99,
    image: AppAssets.apple,
    description: 'Crunchy carrots, ideal for soups and roasting.',
    quantity: 1.0,
  ),
   SearchModel(
    name: 'Diet Coke',
    price: 4.99,
    image: AppAssets.diet,
    description: 'Fresh organic bananas, perfect for smoothies and snacks.',
    quantity: 1.0,
  ),
  SearchModel(
    name: 'Sprite Can',
    price: 3.49,
    image: AppAssets.sprite,
    description: 'Crisp and juicy red apples, great for pies and salads.',
    quantity: 1.0,
  ),
  SearchModel(
    name: 'Apple & Grape Juice',
    price: 2.99,
    image: AppAssets.apple,
    description: 'Crunchy carrots, ideal for soups and roasting.',
    quantity: 1.0,
  ),
];
