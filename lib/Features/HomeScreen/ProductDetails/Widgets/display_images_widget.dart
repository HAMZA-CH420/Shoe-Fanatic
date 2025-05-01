import 'package:flutter/material.dart';
import 'package:shoe_fantastic/Features/HomeScreen/Widgets/fav_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../Ui Helper/Color Palate/color_palate.dart';

class DisplayImagesWidget extends StatelessWidget {
  const DisplayImagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    PageController pageController = PageController();
    return Column(
      spacing: 10,
      children: [
        SizedBox(
          height: size.height / 3.9,
          width: size.width,
          child: Stack(children: [
            PageView.builder(
              controller: pageController,
              itemCount: 2,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      image: AssetImage("assets/images/recent1.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              },
            ),
            Positioned(
                right: 20,
                top: 10,
                child: FavButton(
                  isRecommended: false,
                )),
            Positioned(
                child: IconButton(
                    onPressed: () => Navigator.pop(context),
                    icon: Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.white,
                    )))
          ]),
        ),
        SmoothPageIndicator(
          controller: pageController,
          count: 2,
          effect: WormEffect(
              spacing: 3,
              activeDotColor: Palate.primaryColor,
              dotHeight: 7,
              dotWidth: 12,
              dotColor: Color(0XFFD9D9D9)),
        ),
      ],
    );
  }
}
