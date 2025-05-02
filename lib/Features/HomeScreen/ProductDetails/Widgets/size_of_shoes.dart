import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Ui%20Helper/widgets/Filter/filter_button_widget.dart';

class SizeOfShoes extends StatelessWidget {
  const SizeOfShoes({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Size",
          style:
              GoogleFonts.publicSans(fontSize: 18, fontWeight: FontWeight.w600),
        ),
        Wrap(
          spacing: 4,
          children: [
            FilterButtonWidget(banner: "6"),
            FilterButtonWidget(banner: "7"),
            FilterButtonWidget(banner: "8"),
          ],
        )
      ],
    );
  }
}
