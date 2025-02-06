import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Features/Onboarding%20Screens/widgets/intro_items.dart';

class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({super.key});

  @override
  State<OnboardingScreens> createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
  List<IntroItems> items = <IntroItems>[
    IntroItems(
        image: Image.asset("assets/images/shoe1.png"),
        description: Text(
          "The listing is authenticated, and a full money-back guarantee is offered. Buyers give sellers points for quick responses, high-quality goods, and quick shipping.",
          style: GoogleFonts.publicSans(
              fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
        ),
        banner: Text(
          "Buy Sneakers",
          style: GoogleFonts.publicSans(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
        )),
    IntroItems(
        image: Image.asset("assets/images/shoe2.png"),
        description: Text(
          "We can assist you in launching a side venture or developing into a full-fledged entrepreneur. Instantly and for free, list a product directly in the app.",
          style: GoogleFonts.publicSans(
              fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
        ),
        banner: Text(
          "Sell Sneakers",
          style: GoogleFonts.publicSans(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
        )),
    IntroItems(
        image: Image.asset("assets/images/shoe3.png"),
        description: Text(
          "Browse the shoe selection, receive & send trade offers, and chat with local Sneaker heads. Trade in your old shoes for some new heat!",
          style: GoogleFonts.publicSans(
              fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black),
        ),
        banner: Text(
          "Trade Sneakers",
          style: GoogleFonts.publicSans(
              fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
        )),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: PageView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                items[index].image,
                items[index].banner,
                items[index].description,
              ],
            );
          },
        ),
      ),
    );
  }
}
