import 'package:green_mart_app/features/home/Date/best_selling_model.dart';

List<ProductModel> isFavoriteFilter(List<ProductModel> allproducts) {
  return allproducts.where((product) => product.isFavorite).toList();
}