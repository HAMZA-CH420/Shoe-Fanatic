import 'package:flutter/material.dart';
import 'package:shoe_fantastic/Features/HomeScreen/ProductDetails/Widgets/display_images_widget.dart';
import 'package:shoe_fantastic/Features/HomeScreen/ProductDetails/Widgets/product_banner.dart';
import 'package:shoe_fantastic/Features/HomeScreen/ProductDetails/Widgets/seller.dart';

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
          spacing: 5,
          children: [
            DisplayImagesWidget(),
            ProductBanner(),
            Seller(),
          ],
        ),
      )),
    );
  }
}
