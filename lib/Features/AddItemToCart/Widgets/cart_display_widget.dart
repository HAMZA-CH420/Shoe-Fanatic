import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Features/AddItemToCart/Widgets/item_counter.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class CartDisplayWidget extends StatelessWidget {
  const CartDisplayWidget({
    super.key,
    required this.price,
    required this.model,
    required this.color,
    required this.shoeSize,
  });
  final String price, model, color, shoeSize;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width,
      height: size.height / 7,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white70,
      ),
      child: Row(
        spacing: 10,
        children: [
          SizedBox(
            height: size.height / 13,
            width: size.width / 3.7,
            child: Image(
              image: AssetImage("assets/images/myShoes.png"),
              fit: BoxFit.contain,
            ),
          ),
          Column(
            spacing: 9,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width / 3.3,
                child: Text(
                  model,
                  style: GoogleFonts.publicSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Palate.blackColor,
                  ),
                ),
              ),
              Text(
                "Color: $color Size: $shoeSize",
                style:
                    GoogleFonts.publicSans(fontSize: 10, color: Colors.black),
              ),
              Text(
                "\$150",
                style: GoogleFonts.publicSans(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Palate.primaryColor,
                ),
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                Icons.delete,
                color: Colors.red,
                size: 25,
              ),
              ItemCounter(),
            ],
          ),
        ],
      ),
    );
  }
}
