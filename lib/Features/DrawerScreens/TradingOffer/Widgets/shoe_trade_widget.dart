import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class ShoeTradeWidget extends StatelessWidget {
  const ShoeTradeWidget(
      {super.key,
      required this.username,
      required this.color,
      required this.shoeSize,
      required this.image,
      required this.model});
  final String username, color, shoeSize, image, model;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return SizedBox(
      height: size.height / 5,
      width: size.width,
      child: Column(
        spacing: 5,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            username,
            style: GoogleFonts.publicSans(
              fontWeight: FontWeight.w500,
              color: Palate.primaryColor,
              fontSize: 16,
            ),
          ),
          shoeData(size),
        ],
      ),
    );
  }

  Widget shoeData(var size) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      height: size.height / 6,
      width: size.width,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        spacing: 25,
        children: [
          SizedBox(
            height: size.height / 7,
            width: size.width / 3.5,
            child: Image.asset(
              "assets/images/$image",
              fit: BoxFit.contain,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: size.height / 13,
                width: size.width / 3,
                child: Text(
                  model,
                  style: GoogleFonts.publicSans(
                    fontWeight: FontWeight.w600,
                    fontSize: 17,
                  ),
                ),
              ),
              Text(
                "Color: $color  Size: $shoeSize",
                style: GoogleFonts.publicSans(
                  fontWeight: FontWeight.w400,
                  fontSize: 11,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
