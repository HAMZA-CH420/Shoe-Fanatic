import 'package:flutter/material.dart';
import 'package:shoe_fantastic/Features/AddItemToCart/Widgets/cart_display_widget.dart';
import 'package:shoe_fantastic/Features/AddItemToCart/item_checkout_screen.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add to cart"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ItemCheckoutScreen(
                    price: "\$150",
                    model: "Nike Air Max 96 Uni Sex",
                    color: "Blue",
                    shoeSize: "7",
                  ),
                ));
          },
          child: CartDisplayWidget(
            price: "\$150",
            model: "Nike Air Max 96 Uni Sex",
            color: "Blue",
            shoeSize: "7",
          ),
        ),
      ),
    );
  }
}
