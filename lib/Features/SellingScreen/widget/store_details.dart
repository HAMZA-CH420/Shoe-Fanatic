import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Ui Helper/Color Palate/color_palate.dart';

class StoreDetails extends StatefulWidget {
  const StoreDetails({super.key});

  @override
  State<StoreDetails> createState() => _StoreDetailsState();
}

class _StoreDetailsState extends State<StoreDetails> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      height: size.height / 7,
      width: size.width,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                spacing: 15,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(50),
                    child: Container(
                      alignment: Alignment.center,
                      height: 70,
                      width: 70,
                      color: Palate.primaryColor,
                      child: Text(
                        "LOGO",
                        style: GoogleFonts.publicSans(
                            fontWeight: FontWeight.w500, color: Colors.white),
                      ),
                    ),
                  ),
                  storeName(size)
                ],
              ),
              ratings(),
            ],
          ),
          SizedBox(
            height: size.height / 20,
            width: size.width / 3,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  spacing: 3,
                  children: [
                    Text(
                      "Followers",
                      style: GoogleFonts.publicSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Palate.primaryColor,
                      ),
                    ),
                    Text(
                      "10",
                      style: GoogleFonts.publicSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Palate.blackColor,
                      ),
                    ),
                  ],
                ),
                Column(
                  spacing: 3,
                  children: [
                    Text(
                      "Followings",
                      style: GoogleFonts.publicSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Palate.primaryColor,
                      ),
                    ),
                    Text(
                      "5",
                      style: GoogleFonts.publicSans(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Palate.blackColor,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget storeName(var size) {
    return SizedBox(
      height: size.height / 20,
      width: size.width / 2.8,
      child: Text(
        "Welcome Back, Shoe Fanatic",
        style: GoogleFonts.publicSans(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          color: Palate.blackColor,
        ),
      ),
    );
  }

  Widget ratings() {
    return Row(
      spacing: 3,
      children: [
        Icon(
          Icons.star,
          color: Colors.amber,
          size: 18,
        ),
        Text(
          "4.9 (123)",
          style: GoogleFonts.publicSans(
              fontSize: 14,
              fontWeight: FontWeight.w500,
              color: Palate.blackColor),
        ),
      ],
    );
  }
}
