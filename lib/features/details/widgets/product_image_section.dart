import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/app_colors.dart';

class ProductImageSection extends StatelessWidget {
  const ProductImageSection({super.key, required this.image});
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * .35,
      decoration: BoxDecoration(
        color: AppColors.detailsCardColor,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: .spaceBetween,
            children: [
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios),
              ),
              IconButton(onPressed: () {}, icon: Icon(Icons.ios_share)),
            ],
          ),
          Expanded(child: Center(child: Image.asset(image))),
        ],
      ),
    );
  }
}
