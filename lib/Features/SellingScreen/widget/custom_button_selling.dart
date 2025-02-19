import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class CustomButtonSelling extends StatelessWidget {
  const CustomButtonSelling(
      {super.key,
      required this.btnName,
      required this.icon,
      required this.onTap});
  final String btnName;
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 17),
      margin: const EdgeInsets.only(top: 20),
      height: 48,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            spacing: 11,
            children: [
              Icon(
                icon,
                color: Palate.blackColor,
                size: 19,
              ),
              Text(
                btnName,
                style: GoogleFonts.publicSans(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
              )
            ],
          ),
          InkWell(
              onTap: onTap,
              child: Icon(
                Icons.arrow_forward_ios,
                size: 15,
                color: Palate.blackColor,
              ))
        ],
      ),
    );
  }
}
