import 'package:flutter/material.dart';
import 'package:green_mart_app/core/styles/app_colors.dart';
import 'package:green_mart_app/core/styles/text_styles.dart';
import 'package:green_mart_app/core/widgets/custom_button.dart';
import 'package:green_mart_app/features/cart/widgets/borderd_widget.dart';
import 'package:green_mart_app/features/home/Date/best_selling_model.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cart Screen',
          style: TextStyles.meduim22.copyWith(fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: productList.length,
        itemBuilder: (context, index) {
          return Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                child: Image.asset(
                  productList[index].image,
                  height: 65,
                  width: 65,
                ),
              ),
              Column(
                crossAxisAlignment: .start,
                children: [
                  Row(
                    mainAxisSize: .max,
                    children: [
                      Text(
                        productList[index].name,
                        style: TextStyles.meduim22.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: 110),
                      Icon(Icons.close),
                    ],
                  ),
                  Text(
                    "${productList[index].weight}kg",
                    style: TextStyles.small14,
                  ),
                  Row(
                    children: [
                      BorderdWidget(
                        icon: Icon(Icons.remove, color: Color(0xffB3B3B3)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Text(
                          '1',
                          style: TextStyles.meduim22.copyWith(fontSize: 14),
                        ),
                      ),
                      BorderdWidget(
                        icon: Icon(Icons.add, color: AppColors.primaryColor),
                      ),
                      SizedBox(width: 30),
                      Text(
                        "\$${productList[index].price}",
                        style: TextStyles.meduim22.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return Divider(height: 0, color: AppColors.borderColor);
        },
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: CustomButton(
          text: 'Go to Checkout',
          onPressed: () {
            showModalBottomSheet(
              backgroundColor: AppColors.bgColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(27),
                  topRight: Radius.circular(27),
                ),
              ),
              useSafeArea: true,
              context: context,
              builder: (context) {
                return Padding(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Checkout',
                            style: TextStyles.meduim22.copyWith(fontSize: 22),
                          ),
                          Spacer(),
                          CloseButton(),
                        ],
                      ),
                      Divider(),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
