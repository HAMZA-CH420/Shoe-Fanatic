import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class AskCashWidget extends StatelessWidget {
  const AskCashWidget({super.key, required this.banner});
  final String banner;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Text(
          banner,
          style: GoogleFonts.publicSans(
            fontWeight: FontWeight.w500,
            color: Palate.blackColor,
            fontSize: 16,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: size.height / 16,
          width: size.width / 2.5,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(25),
          ),
          alignment: Alignment.center,
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: "\$00",
              hintStyle: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.black45),
            ),
          ),
        ),
      ],
    );
  }
}
