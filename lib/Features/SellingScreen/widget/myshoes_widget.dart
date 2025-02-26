import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class MyShoesWidget extends StatelessWidget {
  const MyShoesWidget(
      {super.key,
      this.isSoldScreen = false,
      required this.price,
      required this.model,
      required this.color,
      required this.shoeSize,
      required this.status,
      required this.dateSold});
  final bool isSoldScreen;
  final String price, model, color, shoeSize, status, dateSold;
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
        spacing: 15,
        children: [
          SizedBox(
            height: size.height / 13,
            width: size.width / 3.7,
            child: Image(
              image: AssetImage("assets/images/myShoes.png"),
              fit: BoxFit.contain,
            ),
          ),
          Column(
            spacing: 9,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: size.width / 3.3,
                child: Text(
                  model,
                  style: GoogleFonts.publicSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    color: Palate.blackColor,
                  ),
                ),
              ),
              Text(
                "Color: $color Size: $shoeSize",
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
          isSoldScreen
              ? Padding(
                  padding: const EdgeInsets.only(left: 7),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        height: 21,
                        width: 60,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.green,
                        ),
                        child: Text(
                          status,
                          style: GoogleFonts.publicSans(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Text(
                        dateSold,
                        style: GoogleFonts.publicSans(
                          fontWeight: FontWeight.w500,
                          fontSize: 10,
                          color: Colors.red,
                        ),
                      )
                    ],
                  ),
                )
              : Align(
                  alignment: Alignment.topRight,
                  widthFactor: 3,
                  child: Icon(
                    Icons.more_horiz,
                    color: Colors.black,
                    size: 22,
                  ),
                ),
        ],
      ),
    );
  }
}
