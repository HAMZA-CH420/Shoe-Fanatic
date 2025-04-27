import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class PriceAndPayWidget extends StatelessWidget {
  const PriceAndPayWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Column(
      spacing: 13,
      children: [
        priceDetails(banner: "Item Price", price: "\$150"),
        priceDetails(banner: "Shipping", price: "\$20"),
        priceDetails(banner: "Sales Tax", price: "\$5"),
        totalPrice(banner: "Total", price: "\$175"),
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Palate.primaryColor,
              fixedSize: Size(size.width, size.height / 19),
            ),
            child: Text(
              "Pay",
              style: GoogleFonts.publicSans(
                fontWeight: FontWeight.w500,
                fontSize: 17,
                color: Colors.white,
              ),
            ))
      ],
    );
  }

  Widget priceDetails({required String banner, required String price}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          banner,
          style: GoogleFonts.publicSans(
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
        ),
        Text(
          price,
          style: GoogleFonts.publicSans(
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
        ),
      ],
    );
  }

  Widget totalPrice({required String banner, required String price}) {
    return Column(
      spacing: 10,
      children: [
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              banner,
              style: GoogleFonts.publicSans(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              price,
              style: GoogleFonts.publicSans(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: Palate.primaryColor,
              ),
            ),
          ],
        )
      ],
    );
  }
}
