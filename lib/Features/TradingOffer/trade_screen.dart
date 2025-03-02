import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Features/TradingOffer/Widgets/shoe_trade_widget.dart';

import '../../Ui Helper/Color Palate/color_palate.dart';

class TradeScreen extends StatelessWidget {
  const TradeScreen({super.key});

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
          spacing: 30,
          children: [
            ShoeTradeWidget(
              color: "Blue",
              model: "Air Force Shoe Sneakers",
              shoeSize: "7",
              image: "myShoes.png",
              username: "@johnAbraham",
            ),
            SvgPicture.asset(
              "assets/icon/tradeIcon.svg",
              height: 50,
              width: 50,
            ),
            ShoeTradeWidget(
              color: "Black",
              model: "Black Running Shoe Sneakers",
              shoeSize: "8",
              image: "trading2.png",
              username: "@johnAbraham",
            ),
          ],
        ),
      ),
    );
  }
}
