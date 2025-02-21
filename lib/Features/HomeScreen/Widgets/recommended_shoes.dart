import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Features/HomeScreen/Widgets/fav_button.dart';

import '../../../Ui Helper/Color Palate/color_palate.dart';

class RecommendedShoes extends StatelessWidget {
  const RecommendedShoes(
      {super.key,
      required this.image,
      required this.brand,
      required this.model,
      required this.price});
  final String image, brand, model, price;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      height: size.height / 8.1,
      width: size.width,
      child: Row(
        spacing: 12,
        children: [
          SizedBox(
            width: size.width / 3,
            height: size.height / 8.1,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
              child: Image.asset(
                'assets/images/$image',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: size.width / 2.8,
            height: 120,
            child: Column(
              spacing: 3,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  brand,
                  style: GoogleFonts.publicSans(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Palate.blackColor,
                  ),
                ),
                Text(
                  model,
                  style: GoogleFonts.publicSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    color: Palate.blackColor,
                  ),
                ),
                Text(
                  price,
                  style: GoogleFonts.publicSans(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Palate.primaryColor,
                  ),
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.topRight,
            widthFactor: 1.5,
            heightFactor: 3.5,
            child: FavButton(
              isRecommended: true,
            ),
          ),
        ],
      ),
    );
  }
}
