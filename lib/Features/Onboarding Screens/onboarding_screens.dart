import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Features/Authentication%20Screens/LoginScreen/login_screen.dart';
import 'package:shoe_fantastic/Features/Onboarding%20Screens/widgets/intro_items.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreens extends StatefulWidget {
  const OnboardingScreens({super.key});

  @override
  State<OnboardingScreens> createState() => _OnboardingScreensState();
}

class _OnboardingScreensState extends State<OnboardingScreens> {
  final PageController pageController = PageController();
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
    final size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Image.asset(
              'assets/icon/logo.png',
            ),
            SizedBox(
              height: 520,
              child: PageView.builder(
                controller: pageController,
                itemCount: items.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: size.height / 10,
                      ),
                      items[index].image,
                      SizedBox(
                        height: size.height / 12,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: items[index].banner,
                      ),
                      items[index].description,
                    ],
                  );
                },
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: SmoothPageIndicator(
                controller: pageController,
                count: items.length,
                effect: WormEffect(
                    activeDotColor: Palate.primaryColor,
                    dotHeight: 8,
                    dotColor: Color(0XFFD9D9D9)),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginScreen(),
                ));
          },
          style: ElevatedButton.styleFrom(
            fixedSize: Size.fromHeight(50),
            backgroundColor: Palate.primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          ),
          child: Text(
            "continue",
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
