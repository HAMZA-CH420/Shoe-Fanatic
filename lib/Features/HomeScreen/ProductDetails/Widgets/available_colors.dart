import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AvailableColors extends StatelessWidget {
  const AvailableColors({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Colors",
          style:
              GoogleFonts.publicSans(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        Wrap(
          spacing: 4,
          children: [
            CircleAvatar(
              radius: 23,
              backgroundColor: Colors.black,
            ),
            CircleAvatar(
              radius: 23,
              backgroundColor: Colors.white,
            ),
            CircleAvatar(
              radius: 23,
              backgroundColor: Colors.orange,
            ),
            CircleAvatar(
              radius: 23,
              backgroundColor: Colors.blue,
            ),
          ],
        ),
      ],
    );
  }
}
