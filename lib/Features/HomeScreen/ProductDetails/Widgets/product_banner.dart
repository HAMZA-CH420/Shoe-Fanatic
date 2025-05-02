import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Features/HomeScreen/ProductDetails/Widgets/seller.dart';

import '../../../../Ui Helper/Color Palate/color_palate.dart';

class ProductBanner extends StatelessWidget {
  const ProductBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Air Force Shoe Sneakers",
              style: GoogleFonts.publicSans(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            Text(
              "\$150",
              style: GoogleFonts.publicSans(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Palate.primaryColor,
              ),
            )
          ],
        ),
        Seller(),
      ],
    );
  }
}
