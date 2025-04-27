import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MethodWidget extends StatelessWidget {
  const MethodWidget({super.key, required this.bannerName});
  final String bannerName;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height / 15,
      width: size.width,
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "",
            style: GoogleFonts.publicSans(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}
