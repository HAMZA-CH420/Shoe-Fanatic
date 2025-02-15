import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSuggestionWidget extends StatelessWidget {
  const CustomSuggestionWidget(
      {super.key, required this.brandName, required this.bgImage});
  final String brandName, bgImage;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: SizedBox(
        height: size.height / 5.5,
        width: size.width / 2.5,
        child: Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset(
                "assets/images/$bgImage",
                fit: BoxFit.cover,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.black.withOpacity(0.2),
              ),
            ),
            Positioned(
              left: 58,
              top: 130,
              child: Text(
                brandName,
                style: GoogleFonts.publicSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
