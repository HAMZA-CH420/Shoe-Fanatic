import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      appBar: AppBar(
        title: Text("Checkout"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 22,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          bottom: 30,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        spacing: 5,
        children: [
          Icon(CupertinoIcons.shield_lefthalf_fill),
          Text(
            "Shoe Fanatic Money-Back Guarantee",
            style: GoogleFonts.publicSans(
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
