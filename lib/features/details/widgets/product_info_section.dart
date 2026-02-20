import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';

class ProductInfoSection extends StatelessWidget {
  const ProductInfoSection({
    super.key,
    required this.name,
    required this.weight,
  });
  final String name;
  final double weight;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Column(
          crossAxisAlignment: .start,
          children: [
            Text(name, style: TextStyles.meduim22.copyWith(fontSize: 18)),
            SizedBox(height: 10),
            Text(
              ' $weight pcs',
              style: TextStyles.small14.copyWith(fontWeight: FontWeight.w600),
            ),
          ],
        ),
        IconButton(
          style: IconButton.styleFrom(padding: EdgeInsets.zero),
          onPressed: () {},
          icon: Icon(Icons.favorite_outline),
        ),
      ],
    );
  }
}
