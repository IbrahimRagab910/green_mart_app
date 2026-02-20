import 'package:green_mart_app/features/home/Date/best_selling_model.dart';

List<ProductModel> filterProductsByCategory(
  List<ProductModel> allproducts,
  String categoryId,
) {
  return allproducts
      .where((product) => product.categoryId == categoryId)
      .toList();
}
