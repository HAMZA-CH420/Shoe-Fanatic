import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoe_fantastic/Features/DiscoverScreen/widgets/brands_widget.dart';
import 'package:shoe_fantastic/Features/DiscoverScreen/widgets/custom_suggestion_widget.dart';
import 'package:shoe_fantastic/Features/HomeScreen/Widgets/custom_searchbar.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

import '../HomeScreen/Widgets/custom_banner.dart';

class DiscoverScreen extends StatelessWidget {
  const DiscoverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        scrolledUnderElevation: 0,
        elevation: 0,
        titleSpacing: 3,
        title: Row(
          children: [
            CustomSearchbar(),
            Icon(
              Icons.filter_alt_rounded,
              size: 30,
              color: Palate.blackColor,
            ),
          ],
        ),
        toolbarHeight: 100,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: SingleChildScrollView(
          child: Column(
            spacing: 10,
            children: [
              CustomBanner(
                bannerName: "Brands",
                onTap: () {},
              ),
              Wrap(
                spacing: 4,
                children: [
                  BrandsWidget(brandName: "Nike"),
                  BrandsWidget(brandName: "Jordan"),
                  BrandsWidget(brandName: "Adidas"),
                  BrandsWidget(brandName: "Off-white"),
                  BrandsWidget(brandName: "Bape"),
                  BrandsWidget(brandName: "Stussy"),
                ],
              ),
              CustomBanner(
                bannerName: "Menswear",
                onTap: () {},
              ),
              Wrap(
                spacing: 13,
                children: [
                  CustomSuggestionWidget(
                    brandName: "Nike",
                    bgImage: "men1.jpeg",
                  ),
                  CustomSuggestionWidget(
                    brandName: "Adidas",
                    bgImage: "men2.jpeg",
                  ),
                  CustomSuggestionWidget(
                    brandName: "Jordan",
                    bgImage: "men3.jpeg",
                  ),
                  CustomSuggestionWidget(
                    brandName: "Fila",
                    bgImage: "men4.png",
                  ),
                ],
              ),
              CustomBanner(
                bannerName: "Women's wear",
                onTap: () {},
              ),
              Wrap(
                spacing: 13,
                children: [
                  CustomSuggestionWidget(
                    brandName: "Nike",
                    bgImage: "men1.jpeg",
                  ),
                  CustomSuggestionWidget(
                    brandName: "Adidas",
                    bgImage: "men2.jpeg",
                  ),
                  CustomSuggestionWidget(
                    brandName: "Jordan",
                    bgImage: "men3.jpeg",
                  ),
                  CustomSuggestionWidget(
                    brandName: "Fila",
                    bgImage: "men4.png",
                  ),
                ],
              ),
              CustomBanner(bannerName: "Kids & Toddlers", onTap: () {}),
              Wrap(
                spacing: 13,
                children: [
                  CustomSuggestionWidget(
                    brandName: "Nike",
                    bgImage: "men1.jpeg",
                  ),
                  CustomSuggestionWidget(
                    brandName: "Adidas",
                    bgImage: "men2.jpeg",
                  ),
                  CustomSuggestionWidget(
                    brandName: "Jordan",
                    bgImage: "men3.jpeg",
                  ),
                  CustomSuggestionWidget(
                    brandName: "Fila",
                    bgImage: "men4.png",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
