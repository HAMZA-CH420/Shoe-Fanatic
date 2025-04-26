import 'package:flutter/material.dart';
import 'package:shoe_fantastic/Features/AddItemToCart/Widgets/cart_display_widget.dart';

class ItemCheckoutScreen extends StatelessWidget {
  const ItemCheckoutScreen(
      {super.key,
      required this.price,
      required this.model,
      required this.color,
      required this.shoeSize});
  final String price, model, color, shoeSize;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              spacing: 30,
              children: [
                CartDisplayWidget(
                  price: price,
                  model: model,
                  color: color,
                  shoeSize: shoeSize,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
