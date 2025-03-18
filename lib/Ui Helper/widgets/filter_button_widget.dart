import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class FilterButtonWidget extends StatefulWidget {
  const FilterButtonWidget({super.key});

  @override
  State<FilterButtonWidget> createState() => _FilterButtonWidgetState();
}

class _FilterButtonWidgetState extends State<FilterButtonWidget> {
  bool isClicked = false;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return GestureDetector(
      onTap: () {
        setState(() {
          isClicked = !isClicked;
        });
      },
      child: Container(
        height: size.height / 21,
        width: size.width / 3.3,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: isClicked ? Palate.primaryColor : Colors.grey.shade200,
        ),
        child: Text(
          "More",
          style: GoogleFonts.publicSans(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            color: isClicked ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
