import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class CustomContinueButton extends StatelessWidget {
  const CustomContinueButton({
    super.key,
    required this.onTap,
    required this.btnName,
    required this.icon,
  });
  final VoidCallback onTap;
  final String btnName, icon;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            alignment: Alignment.centerLeft,
            fixedSize: Size(350, 50),
            backgroundColor: Colors.white,
          ),
          child: Row(
            spacing: 10,
            children: [
              SvgPicture.asset(icon),
              Text(
                btnName,
                style: GoogleFonts.publicSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Palate.blackColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
