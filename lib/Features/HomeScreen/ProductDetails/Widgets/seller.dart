import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class Seller extends StatelessWidget {
  const Seller({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width / 2,
      child: Row(
        children: [
          Text(
            "Added by @johncena",
            style: GoogleFonts.publicSans(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Palate.primaryColor,
            ),
          ),
          Text("4.9"),
        ],
      ),
    );
  }
}
