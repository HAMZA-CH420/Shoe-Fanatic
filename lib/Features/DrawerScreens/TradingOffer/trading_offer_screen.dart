import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Ui Helper/Color Palate/color_palate.dart';
import 'Widgets/custom_button.dart';
import 'Widgets/trading_offer_widget.dart';

class TradingOfferScreen extends StatefulWidget {
  const TradingOfferScreen({super.key});

  @override
  State<TradingOfferScreen> createState() => _TradingOfferScreenState();
}

class _TradingOfferScreenState extends State<TradingOfferScreen> {
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
    final size = MediaQuery.sizeOf(context);
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
              counterTap: () {
                _showDialogue(context, size, () {
                  setState(() {
                    Navigator.pop(context);
                  });
                }, "Counter Offer", "Are you sure to Counter offer", false,
                    "Counter");
              },
              declineTap: () async {
                _showDialogue(
                  context,
                  size,
                  () {
                    setState(() {
                      tradingData.removeAt(index);
                      Navigator.pop(context);
                    });
                  },
                  "Decline Offer",
                  "Are you sure to decline offer",
                  true,
                  "Decline",
                );
              },
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

//method to show dialogue for confirmation
  Future _showDialogue(
    BuildContext context,
    var size,
    var onTap,
    String banner,
    String title,
    bool isDeclineButton,
    String btnName,
  ) {
    return showModalBottomSheet(
      context: context,
      builder: (context) {
        return SizedBox(
          height: size.height / 4.5,
          width: size.width,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  banner,
                  style: GoogleFonts.publicSans(
                      fontWeight: FontWeight.w600,
                      color: isDeclineButton
                          ? Colors.redAccent
                          : Palate.primaryColor,
                      fontSize: 18),
                ),
                Text(
                  title,
                  style: GoogleFonts.publicSans(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 18),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButtonTrade(
                        btnName: "No",
                        onTap: () {
                          Navigator.pop(context);
                        }),
                    CustomButtonTrade(
                      btnName: btnName,
                      onTap: onTap,
                      isDeclineButton: isDeclineButton,
                      isTradeButton: isDeclineButton ? false : true,
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
}
