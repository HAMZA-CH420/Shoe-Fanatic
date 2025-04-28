import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class MethodWidget extends StatelessWidget {
  const MethodWidget({super.key, required this.bannerName, required this.icon});
  final String bannerName, icon;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height / 11,
      width: size.width,
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(16)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            bannerName,
            style: GoogleFonts.publicSans(
              fontWeight: FontWeight.w500,
              fontSize: 18,
            ),
          ),
          SvgPicture.asset(
            'assets/icon/$icon',
          ),
        ],
      ),
    );
  }
}
