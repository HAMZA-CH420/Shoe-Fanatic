import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class CustomBannerPolicy extends StatelessWidget {
  const CustomBannerPolicy({super.key, required this.bannerName});
  final String bannerName;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height / 13,
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Palate.primaryColor,
      ),
      alignment: Alignment.center,
      child: Text(
        bannerName,
        style: GoogleFonts.publicSans(
          fontWeight: FontWeight.w500,
          color: Colors.white,
          fontSize: 17,
        ),
      ),
    );
  }
}
