import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Features/AddItemToCart/Widgets/item_counter.dart';

class Quantity extends StatelessWidget {
  const Quantity({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "Quantity",
          style:
              GoogleFonts.publicSans(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        ItemCounter(),
      ],
    );
  }
}
