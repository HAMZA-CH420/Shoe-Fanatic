import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner(
      {super.key, required this.bannerName, required this.onTap});
  final String bannerName;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bannerName,
          style: GoogleFonts.publicSans(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Palate.blackColor),
        ),
        InkWell(
          onTap: onTap,
          child: Text(
            "View all",
            style: GoogleFonts.publicSans(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Palate.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
