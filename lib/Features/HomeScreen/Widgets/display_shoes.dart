import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../Ui Helper/Color Palate/color_palate.dart';

class DisplayShoes extends StatelessWidget {
  DisplayShoes({super.key});
  final List<Image> images = [
    Image.asset("assets/images/pic1.png"),
    Image.asset("assets/images/pic2.png"),
    Image.asset("assets/images/pic3.png"),
    Image.asset("assets/images/pic4.png"),
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
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: images[index],
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
