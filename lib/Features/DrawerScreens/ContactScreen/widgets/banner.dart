import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class ContactTextField extends StatelessWidget {
  const ContactTextField(
      {super.key, required this.bannerName, this.isDescription = false});
  final String bannerName;
  final bool isDescription;
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 5,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          bannerName,
          style: GoogleFonts.publicSans(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: Palate.blackColor,
          ),
        ),
        Container(
          height: isDescription ? 150 : 50,
          width: double.infinity,
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(25),
          ),
          child: TextFormField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}
