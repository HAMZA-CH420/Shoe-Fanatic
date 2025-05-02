import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

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
            SizeOfShoe(banner: "6"),
            SizeOfShoe(banner: "7"),
            SizeOfShoe(banner: "8"),
          ],
        )
      ],
    );
  }
}

class SizeOfShoe extends StatefulWidget {
  const SizeOfShoe({super.key, required this.banner});
  final String banner;
  @override
  State<SizeOfShoe> createState() => _SizeOfShoe();
}

class _SizeOfShoe extends State<SizeOfShoe> {
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
        width: size.width / 4,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(22),
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
