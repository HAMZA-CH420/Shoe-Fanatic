import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';
import 'package:shoe_fantastic/Ui%20Helper/widgets/Filter/filter_button_widget.dart';
import 'package:shoe_fantastic/Ui%20Helper/widgets/Filter/filter_helper_widget.dart';

Future<void> filterWidget(BuildContext context) async {
  final size = MediaQuery.sizeOf(context);
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Column(
            spacing: 10,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Filter",
                  style: GoogleFonts.publicSans(
                      fontWeight: FontWeight.w600,
                      color: Palate.primaryColor,
                      fontSize: 18),
                ),
              ),
              FilterHelperWidget(
                banner: "Gender",
                buttons: [
                  FilterButtonWidget(banner: "Mens"),
                  FilterButtonWidget(banner: "Women"),
                  FilterButtonWidget(banner: "Children"),
                  FilterButtonWidget(banner: "Toddlers"),
                ],
              ),
              FilterHelperWidget(buttons: [
                FilterButtonWidget(banner: "All"),
                FilterButtonWidget(banner: "Low-top"),
                FilterButtonWidget(banner: "High-top"),
                FilterButtonWidget(banner: "Boots"),
                FilterButtonWidget(banner: "Casual Leather"),
                FilterButtonWidget(banner: "Sandals"),
              ], banner: "FootWear")
            ],
          ),
        ),
      );
    },
  );
}
