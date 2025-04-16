import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class FilterBannerWidget extends StatelessWidget {
  const FilterBannerWidget({super.key, required this.banner});
  final String banner;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      width: 120,
      child: Text(
        banner,
        style: GoogleFonts.publicSans(
            fontWeight: FontWeight.w600,
            color: Palate.primaryColor,
            fontSize: 18),
      ),
    );
  }
}
