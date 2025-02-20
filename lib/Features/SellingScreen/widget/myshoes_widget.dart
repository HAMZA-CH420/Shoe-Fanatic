import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class MyShoesWidget extends StatelessWidget {
  const MyShoesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      width: size.width,
      height: size.height / 7,
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white70,
      ),
      child: Row(
        spacing: 22,
        children: [
          SizedBox(
            height: 80,
            width: 100,
            child: Image(
              image: AssetImage("assets/images/myShoes.png"),
            ),
          ),
          Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width / 2.5,
                child: Text(
                  "Air Force Shoe Sneakers",
                  style: GoogleFonts.publicSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Palate.blackColor,
                  ),
                ),
              ),
              Text(
                "Color: Blue Size: 7",
                style:
                    GoogleFonts.publicSans(fontSize: 10, color: Colors.black),
              ),
              Text(
                "\$150",
                style: GoogleFonts.publicSans(
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                  color: Palate.primaryColor,
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: Icon(
              Icons.more_horiz,
              color: Colors.black,
              size: 22,
            ),
          )
        ],
      ),
    );
  }
}
