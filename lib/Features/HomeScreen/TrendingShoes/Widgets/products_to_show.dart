import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProductsToShow extends StatelessWidget {
  const ProductsToShow({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height / 3.9,
      width: size.width / 2.3,
      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 15),
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        spacing: 15,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              "assets/images/myShoes.png",
              width: size.width / 3.5,
            ),
          ),
          Column(
            children: [
              Text(
                "Jordan",
                style: GoogleFonts.publicSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
              Text(
                "Air Force Shoe Sneakers",
                style: GoogleFonts.publicSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
              Text(
                "Jordan",
                style: GoogleFonts.publicSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
