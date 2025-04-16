import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';
import 'package:shoe_fantastic/Ui%20Helper/widgets/filter_banner_widget.dart';
import 'package:shoe_fantastic/Ui%20Helper/widgets/filter_button_widget.dart';

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
            spacing: 12,
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
              FilterBannerWidget(),
              Wrap(
                spacing: 8,
                children: [
                  FilterButtonWidget(
                    banner: "Men",
                  ),
                  FilterButtonWidget(
                    banner: "Women",
                  ),
                  FilterButtonWidget(
                    banner: "Children",
                  ),
                  FilterButtonWidget(
                    banner: "Toddlers",
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    },
  );
}
