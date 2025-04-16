import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class FilterButtonWidget extends StatefulWidget {
  const FilterButtonWidget({super.key, required this.banner});
  final String banner;
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
        margin: const EdgeInsets.only(top: 8),
        height: size.height / 21,
        width: size.width / 3.4,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: isClicked ? Palate.primaryColor : Colors.grey.shade100,
        ),
        child: Text(
          widget.banner,
          style: GoogleFonts.publicSans(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: isClicked ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}
