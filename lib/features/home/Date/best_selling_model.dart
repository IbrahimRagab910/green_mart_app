import 'package:green_mart_app/core/constants/app_assets.dart';

class ProductModel {
  final String image;
  final String name;
  final double weight;
  final double price;
  final String description;
  final String categoryId;
  bool isFavorite;
  ProductModel({
    required this.image,
    required this.name,
    required this.weight,
    required this.price,
    required this.description,
    required this.categoryId,
    this.isFavorite = false,
  });
}

List<ProductModel> productList = [
  // make dummy list of BestSellingModedl
  ProductModel(
    image: 'assets/images/banana.png',
    name: 'Banana',
    weight: 1,
    price: 0.99,
    description: 'Fresh and ripe bananas, perfect for smoothies and snacks.',
    categoryId: '1',
  ),
  // ProductModel(
  //   categoryId: '1',
  //   image: 'assets/images/ginger.png',
  //   name: 'Ginger',
  //   weight: 0.5,
  //   price: 1.49,
  //   description: 'Aromatic ginger root, ideal for cooking and tea.',
  // ),
  ProductModel(
    categoryId: '2',
    image: 'assets/images/pepper.png',
    name: 'Pepper',
    weight: 1,
    price: 1.99,
    description:
        'Crisp and colorful bell peppers, great for salads and stir-fries.',
  ),
  ProductModel(
    categoryId: '1',
    image: 'assets/images/banana.png',
    name: 'Banana',
    weight: 1,
    price: 0.99,
    description: 'Fresh and ripe bananas, perfect for smoothies and snacks.',
  ),
  // ProductModel(
  //   categoryId: '2',
  //   image: 'assets/images/ginger.png',
  //   name: 'Ginger',
  //   weight: 0.5,
  //   price: 1.49,
  //   description: 'Aromatic ginger root, ideal for cooking and tea.',
  // ),
  ProductModel(
    categoryId: '1',
    image: 'assets/images/pepper.png',
    name: 'Pepper',
    weight: 1,
    price: 1.99,
    description:
        'Crisp and colorful bell peppers, great for salads and stir-fries.',
  ),
  ProductModel(
    categoryId: '1',
    image: 'assets/images/banana.png',
    name: 'Banana',
    weight: 1,
    price: 0.99,
    description: 'Fresh and ripe bananas, perfect for smoothies and snacks.',
  ),

  // ProductModel(
  //   categoryId: '2',
  //   image: 'assets/images/ginger.png',
  //   name: 'Ginger',
  //   weight: 0.5,
  //   price: 1.49,
  //   description: 'Aromatic ginger root, ideal for cooking and tea.',
  // ),
  ProductModel(
    categoryId: '1',
    image: 'assets/images/pepper.png',
    name: 'Pepper',
    weight: 1,
    price: 1.99,
    description:
        'Crisp and colorful bell peppers, great for salads and stir-fries.',
  ),
];
List<ProductModel> favoriteProducts = [
  ProductModel(
    image: AppAssets.sprite,
    name: 'Sprite Can',
    weight: 325,
    price: 1.5,
    description: 'Refreshing Sprite Can, perfect for quenching your thirst.',
    categoryId: '1',
  ),
  ProductModel(
    image: AppAssets.diet,
    name: 'Diet Coke',
    weight: 325,
    price: 1.5,
    description: 'Classic Diet Coke, a sugar-free alternative for soda lovers.',
    categoryId: '1',
  ),
  //  ProductModel(
  //   image: AppAssets.cocacola,
  //   name: 'Coca-Cola Can',
  //   weight: 325,
  //   price: 1.5,
  //   description: 'Classic Diet Coke, a sugar-free alternative for soda lovers.',
  //   categoryId: '1',
  // ),
  ProductModel(
    image: AppAssets.apple,
    name: 'Apple & Grape Juice',
    weight: 325,
    price: 1.5,
    description: 'Classic Diet Coke, a sugar-free alternative for soda lovers.',
    categoryId: '1',
  ),
  //  ProductModel(
  //   image: AppAssets.pepsi,
  //   name: 'Pepsi Can',
  //   weight: 325,
  //   price: 1.5,
  //   description: 'Classic Diet Coke, a sugar-free alternative for soda lovers.',
  //   categoryId: '1',
  // ),
];
