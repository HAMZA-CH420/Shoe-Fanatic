import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Features/HomeScreen/ProductDetails/Widgets/available_colors.dart';
import 'package:shoe_fantastic/Features/HomeScreen/ProductDetails/Widgets/display_images_widget.dart';
import 'package:shoe_fantastic/Features/HomeScreen/ProductDetails/Widgets/product_banner.dart';
import 'package:shoe_fantastic/Features/HomeScreen/ProductDetails/Widgets/quantity.dart';
import 'package:shoe_fantastic/Features/HomeScreen/ProductDetails/Widgets/size_of_shoes.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

import '../../AddItemToCart/cart_screen.dart';

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
          spacing: 20,
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
            Quantity(),
            guarantee(context),
            buyButton(context),
          ],
        ),
      )),
    );
  }

  Widget guarantee(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 18,
      width: MediaQuery.sizeOf(context).width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        border: Border.all(
          color: Colors.black,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.only(top: 20),
      child: Row(
        spacing: 5,
        children: [
          Icon(CupertinoIcons.shield_lefthalf_fill),
          Text(
            "Shoe Fanatic Money-Back Guarantee",
            style: GoogleFonts.publicSans(
              fontWeight: FontWeight.w500,
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }

  Widget buyButton(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 23,
          backgroundColor: Colors.grey.shade300,
          child: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartScreen(),
                    ));
              },
              icon: Icon(Icons.shopping_cart_rounded)),
        ),
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Palate.primaryColor,
              fixedSize: Size(
                size.width / 1.35,
                size.height / 22,
              ),
            ),
            child: Text(
              "Buy",
              style: GoogleFonts.publicSans(
                fontWeight: FontWeight.w500,
                fontSize: 16,
                color: Colors.white,
              ),
            ))
      ],
    );
  }
}
