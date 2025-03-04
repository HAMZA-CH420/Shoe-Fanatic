import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:shoe_fantastic/Features/TradingOffer/Widgets/ask_cash_widget.dart';
import 'package:shoe_fantastic/Features/TradingOffer/Widgets/custom_button.dart';
import 'package:shoe_fantastic/Features/TradingOffer/Widgets/shoe_trade_widget.dart';

import '../../Ui Helper/Color Palate/color_palate.dart';

class TradeScreen extends StatefulWidget {
  const TradeScreen({super.key});

  @override
  State<TradeScreen> createState() => _TradeScreenState();
}

class _TradeScreenState extends State<TradeScreen>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          scrolledUnderElevation: 0.0,
          elevation: 0,
          backgroundColor: Colors.transparent,
          systemOverlayStyle: SystemUiOverlayStyle.dark,
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
          child: SingleChildScrollView(
            child: Column(
              spacing: 20,
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
                  username: "@umarAkmal",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    AskCashWidget(
                      banner: "Add Cash",
                    ),
                    AskCashWidget(
                      banner: "Ask For Cash",
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomButtonTrade(
                      onTap: () {},
                      btnName: "Back",
                    ),
                    CustomButtonTrade(
                      btnName: 'Trade',
                      onTap: () async {
                        await showTradeAnimation(context);
                      },
                      isTradeButton: true,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Future<void> showTradeAnimation(BuildContext context) async {
    // Create an AnimationController
    final controller = AnimationController(
      vsync: this,
    );
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        Navigator.pop(context);
        Navigator.pop(context);
        controller.dispose(); // Dispose of the controller
      }
    });

    // Show the dialog
    await showDialog(
      context: context,
      barrierDismissible: false, // Prevent dismissing by tapping outside
      builder: (context) {
        return AlertDialog(
          elevation: 4,
          backgroundColor: Colors.transparent,
          content: Lottie.asset(
            "assets/animations/tradeAnimation.json",
            controller: controller,
            onLoaded: (composition) {
              // Configure the controller's duration
              controller.duration = composition.duration;
              // Start the animation
              controller.forward();
            },
          ),
        );
      },
    );
  }
}
