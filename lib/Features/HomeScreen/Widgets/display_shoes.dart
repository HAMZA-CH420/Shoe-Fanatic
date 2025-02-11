import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../Ui Helper/Color Palate/color_palate.dart';

class DisplayShoes extends StatelessWidget {
  DisplayShoes({super.key});
  final List<String> images = [
    'pic.png',
    'pic2.png',
    'pic3.png',
    'pic4.png',
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    PageController pageController = PageController();
    return Column(
      spacing: 7,
      children: [
        SizedBox(
          height: size.height / 4.8,
          width: size.width,
          child: PageView.builder(
            controller: pageController,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    // The Image
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30),
                      child: Image.asset(
                        "assets/images/${images[index]}",
                        fit: BoxFit.cover,
                      ),
                    ),
                    // The Black Shade
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.black.withOpacity(0.3),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
        SmoothPageIndicator(
          controller: pageController,
          count: images.length,
          effect: WormEffect(
              activeDotColor: Palate.primaryColor,
              dotHeight: 5,
              dotWidth: 11,
              dotColor: Color(0XFFD9D9D9)),
        ),
      ],
    );
  }
}
