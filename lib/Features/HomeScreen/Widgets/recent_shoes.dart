import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class RecentShoes extends StatelessWidget {
  const RecentShoes({super.key});
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 215,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Column(
        children: [
          widget("recent1.png"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nike',
                  style: GoogleFonts.publicSans(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  "Nike Dunk Low SB X Sting-water",
                  style: GoogleFonts.publicSans(
                      fontWeight: FontWeight.w400, fontSize: 13),
                ),
                Text(
                  "\$250",
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

  Widget widget(String image) {
    return SizedBox(
      height: 117,
      width: 150,
      child: Stack(
        fit: StackFit.expand,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image.asset(
              "assets/images/$image",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Colors.black.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}
