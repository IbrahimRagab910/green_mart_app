import 'package:flutter/material.dart';
import 'package:green_mart_app/core/widgets/custom_button.dart';
import 'package:green_mart_app/features/details/widgets/discription_section.dart';
import 'package:green_mart_app/features/details/widgets/nutritions_widget.dart';
import 'package:green_mart_app/features/details/widgets/product_image_section.dart';
import 'package:green_mart_app/features/details/widgets/product_info_section.dart';
import 'package:green_mart_app/features/details/widgets/quantity_price_section.dart';
import 'package:green_mart_app/features/details/widgets/review_widget.dart';
import 'package:green_mart_app/features/home/Date/best_selling_model.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key, required this.model});
  final ProductModel model;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ProductImageSection(image: widget.model.image),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: ProductInfoSection(
                  name: widget.model.name,
                  weight: widget.model.weight,
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: QuantityPriceSection(price: widget.model.price),
              ),
              Divider(height: 40, indent: 20, endIndent: 20, thickness: 0.9),
              DiscriptionSection(widget: widget),
              Divider(height: 20, indent: 20, endIndent: 20, thickness: 0.9),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: NutritionsWidget(),
              ),
              Divider(height: 20, indent: 20, endIndent: 20, thickness: 0.9),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),

                child: ReviewWidget(),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsetsGeometry.fromLTRB(15, 0, 15, 15),
        child: CustomButton(text: 'Add To Cart', onPressed: () {}),
      ),
    );
  }
}
