import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Features/HomeScreen/ProductDetails/Widgets/seller.dart';

import '../../../../Ui Helper/Color Palate/color_palate.dart';

class ProductBanner extends StatelessWidget {
  const ProductBanner({super.key, required this.banner, required this.price});
  final String banner, price;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              banner,
              style: GoogleFonts.publicSans(
                fontWeight: FontWeight.w600,
                fontSize: 18,
              ),
            ),
            Text(
              price,
              style: GoogleFonts.publicSans(
                fontSize: 18,
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
