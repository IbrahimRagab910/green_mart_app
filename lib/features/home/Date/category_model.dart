
import 'package:green_mart_app/core/constants/app_assets.dart';

class CategoryModel {
  final String id;
  final String name;
  final String image;

  CategoryModel({
    required this.id,
    required this.name,
    required this.image,
  });
}
// make dummy list of CategoryModel including id name and image make fruits and vegitables categoty with id 1 with name Frash Fruits and vigetables

List<CategoryModel> categoryList = [
  CategoryModel(
    id: '1',
    name: 'Fresh Fruits & Vegetables',
    image:AppAssets.fruits,
  ),
  CategoryModel(
    id: '2',
    name: 'Dairy Products',
    image: AppAssets.egg,
  ),
  CategoryModel(
    id: '3',
    name: 'Bakery Items',
    image: AppAssets.bekary,
  ),
  CategoryModel(
    id: '4',
    name: 'Meat & Seafood',
    image: AppAssets.meat,
  ),
  CategoryModel(
    id: '5',
    name: 'Beverages',
    image: AppAssets.beverages,
  ),
  CategoryModel(
    id: '6',
    name: 'Cooking Oil& Ghee',
    image: AppAssets.oil,
  ),
];