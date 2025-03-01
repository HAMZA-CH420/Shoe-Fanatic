import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Features/TradingOffer/Widgets/trading_offer_widget.dart';

import '../../Ui Helper/Color Palate/color_palate.dart';

class TradingOfferScreen extends StatelessWidget {
  TradingOfferScreen({super.key});
  final List<Map<String, dynamic>> tradingData = [
    {
      "sellerLink": "@johnAbraham",
      "availableColor": "Blue",
      "availableSize": "7",
      "brand": "Air Force Shoe Sneakers",
      "shoeImageAddress": "trading2.png",
    },
    {
      "sellerLink": "@umarAkmal",
      "availableColor": "BLue",
      "availableSize": "8",
      "brand": "Blue Running Shoe Sneakers",
      "shoeImageAddress": "myShoes.png",
    },
    {
      "sellerLink": "@johnyCobra",
      "availableColor": "Green",
      "availableSize": "7",
      "brand": "Air Force Running Shoe Sneakers",
      "shoeImageAddress": "shoe3.png",
    },
  ];
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
        child: ListView.builder(
          itemCount: tradingData.length,
          itemBuilder: (context, index) {
            return TradingOfferWidget(
              brand: tradingData[index]["brand"],
              sellerLink: tradingData[index]["sellerLink"],
              imageAddress: tradingData[index]["shoeImageAddress"],
              availableColor: tradingData[index]["availableColor"],
              availableSize: tradingData[index]["availableSize"],
            );
          },
        ),
      ),
    );
  }
}
