import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Features/HomeScreen/ProductDetails/Widgets/available_colors.dart';
import 'package:shoe_fantastic/Features/HomeScreen/ProductDetails/Widgets/display_images_widget.dart';
import 'package:shoe_fantastic/Features/HomeScreen/ProductDetails/Widgets/product_banner.dart';
import 'package:shoe_fantastic/Features/HomeScreen/ProductDetails/Widgets/size_of_shoes.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 15,
          children: [
            DisplayImagesWidget(),
            ProductBanner(),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit orbi arcu nec ipsum dapibus tempor parturient in. Ac vitae ut lacus, sed id malesuada donec.",
              style: GoogleFonts.publicSans(
                fontSize: 15,
                fontWeight: FontWeight.w400,
              ),
            ),
            AvailableColors(),
            SizeOfShoes(),
          ],
        ),
      )),
    );
  }
}
