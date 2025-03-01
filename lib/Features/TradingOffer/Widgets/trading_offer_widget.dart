import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class TradingOfferWidget extends StatelessWidget {
  const TradingOfferWidget(
      {super.key,
      required this.brand,
      required this.sellerLink,
      required this.imageAddress,
      required this.availableColor,
      required this.availableSize});
  final String availableSize, availableColor, brand, sellerLink, imageAddress;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height / 5.5,
      width: size.width,
      padding: const EdgeInsets.only(top: 13, left: 10, bottom: 10),
      margin: const EdgeInsets.only(bottom: 11),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Row(
        spacing: 10,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height / 7,
            width: size.width / 3.5,
            child: Image.asset(
              "assets/images/$imageAddress",
              fit: BoxFit.contain,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              offerData(size),
              Wrap(
                spacing: 3,
                children: [
                  button(Colors.transparent, true, "Counter"),
                  button(Color(0XFFFF7878), false, "Decline"),
                  button(Color(0XFF4CAF50), false, "Accept"),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget offerData(var size) {
    return SizedBox(
      width: size.width / 3,
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            sellerLink,
            style: GoogleFonts.publicSans(
              fontSize: 12,
              fontWeight: FontWeight.w400,
              color: Palate.primaryColor,
            ),
          ),
          Text(
            brand,
            style: GoogleFonts.publicSans(
              fontSize: 15,
              fontWeight: FontWeight.w500,
              color: Palate.blackColor,
            ),
          ),
          Text(
            "Color: $availableColor  Size: $availableSize",
            style: GoogleFonts.publicSans(
              fontSize: 10,
              fontWeight: FontWeight.w400,
              color: Palate.blackColor,
            ),
          ),
        ],
      ),
    );
  }

  Widget button(Color btnColor, bool areBorders, String btnName) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        alignment: Alignment.center,
        height: 30,
        width: 65,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border:
              Border.all(color: areBorders ? Colors.black : Colors.transparent),
          color: btnColor,
        ),
        child: Text(
          btnName,
          style: GoogleFonts.publicSans(
            fontWeight: FontWeight.w400,
            color: areBorders ? Colors.black : Colors.white,
            fontSize: 12,
          ),
        ),
      ),
    );
  }
}
