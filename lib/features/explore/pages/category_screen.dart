import 'package:flutter/material.dart';
import 'package:green_mart_app/core/functions/filter_function.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/features/home/Date/best_selling_model.dart';
import 'package:green_mart_app/features/home/widgets/item_widget.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({super.key, required this.id});
  final String id;

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  @override
  void initState() {
    super.initState();
    filterProductsByCategory(productList, widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Frash Fruits & Vegetable',
          style: TextStyles.meduim22.copyWith(fontSize: 15),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: EdgeInsets.symmetric(horizontal: 12),
        itemCount: productList.length,

        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15,
          crossAxisSpacing: 15,
          mainAxisExtent: 200,
        ),
        itemBuilder: (contex, index) {
          return ItemWidget(model: productList[index]);
        },
      ),
    );
  }
}
