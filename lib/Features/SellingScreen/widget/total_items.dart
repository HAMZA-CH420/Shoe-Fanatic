import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TotalItems extends StatelessWidget {
  const TotalItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Text("All items (6)",
          style: GoogleFonts.publicSans(
            fontWeight: FontWeight.w500,
            fontSize: 13,
            color: Colors.black45,
          )),
    );
  }
}
