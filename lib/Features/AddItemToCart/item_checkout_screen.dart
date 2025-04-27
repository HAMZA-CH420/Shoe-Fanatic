import 'package:flutter/material.dart';
import 'package:shoe_fantastic/Features/AddItemToCart/Widgets/cart_display_widget.dart';
import 'package:shoe_fantastic/Features/AddItemToCart/Widgets/price_and_pay_widget.dart';

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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Column(
                    spacing: MediaQuery.sizeOf(context).height / 16,
                    children: [
                      CartDisplayWidget(
                        price: price,
                        model: model,
                        color: color,
                        shoeSize: shoeSize,
                      ),
                      guarantee(context),
                    ],
                  ),
                  PriceAndPayWidget(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget guarantee(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 18,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: Colors.black,
        ),
      ),
    );
  }
}
