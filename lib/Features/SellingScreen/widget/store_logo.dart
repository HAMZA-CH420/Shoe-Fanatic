import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Ui Helper/Color Palate/color_palate.dart';

class StoreLogo extends StatelessWidget {
  const StoreLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        alignment: Alignment.center,
        height: 65,
        width: 65,
        color: Palate.primaryColor,
        child: Text(
          "LOGO",
          style: GoogleFonts.publicSans(
              fontWeight: FontWeight.w500, color: Colors.white),
        ),
      ),
    );
  }
}
