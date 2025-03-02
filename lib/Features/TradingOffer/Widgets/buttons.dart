import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Buttons extends StatelessWidget {
  const Buttons(
      {super.key,
      required this.btnName,
      required this.onTap,
      required this.areBorders,
      required this.btnColor});
  final String btnName;
  final VoidCallback onTap;
  final bool areBorders;
  final Color btnColor;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height: 30,
        width: 65,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border:
              Border.all(color: areBorders ? Colors.black : Colors.transparent),
          color: btnColor,
        ),
        child: Text(
          btnName,
          style: GoogleFonts.publicSans(
            fontWeight: FontWeight.w400,
            color: areBorders ? Colors.black : Colors.white,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
