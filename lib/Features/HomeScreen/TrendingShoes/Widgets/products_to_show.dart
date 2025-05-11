import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Features/HomeScreen/Widgets/fav_button.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class ProductsToShow extends StatelessWidget {
  const ProductsToShow({super.key});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Wrap(
      children: [
        widget(size, "myShoes.png", "Nike", "Nike Dunk Low SB X Sting-water",
            "\$240"),
        widget(size, "myShoes.png", "Nike", "Nike Dunk Low SB X Sting-water",
            "\$240"),
        widget(size, "myShoes.png", "Nike", "Nike Dunk Low SB X Sting-water",
            "\$240"),
        widget(size, "myShoes.png", "Nike", "Nike Dunk Low SB X Sting-water",
            "\$240")
      ],
    );
  }

  ///Widget for recent shoes
  Widget widget(
      var size, String image, String brand, String model, String price) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      height: size.height / 3.5,
      width: size.width / 2.4,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(
            height: size.height / 6.5,
            width: size.width / 2.4,
            child: Stack(
              children: [
                Positioned(
                  top: 10,
                  left: 10,
                  child: Image.asset(
                    "assets/images/$image",
                    width: size.width / 3,
                  ),
                ),
                Positioned(
                    top: 8,
                    right: 12,
                    child: FavButton(
                      isRecommended: false,
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  brand,
                  style: GoogleFonts.publicSans(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  model,
                  style: GoogleFonts.publicSans(
                      fontWeight: FontWeight.w400, fontSize: 13),
                ),
                Text(
                  price,
                  style: GoogleFonts.publicSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Palate.primaryColor,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
