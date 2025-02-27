import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Features/TradingOffer/Widgets/trading_offer_widget.dart';

import '../../Ui Helper/Color Palate/color_palate.dart';

class TradingOfferScreen extends StatelessWidget {
  const TradingOfferScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 90,
        title: Text(
          "Trading Offers",
          style: GoogleFonts.publicSans(
              fontWeight: FontWeight.w500,
              fontSize: 19,
              color: Palate.blackColor),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 18,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            TradingOfferWidget(),
          ],
        ),
      ),
    );
  }
}
