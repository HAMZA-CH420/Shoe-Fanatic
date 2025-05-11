import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Features/HomeScreen/TrendingShoes/Widgets/products_to_show.dart';

import '../../AddItemToCart/cart_screen.dart';

class TrendingShoesScreen extends StatelessWidget {
  const TrendingShoesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: Text(
          "Trending",
          style: GoogleFonts.publicSans(
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 22,
            )),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartScreen(),
                    ));
              },
              icon: Icon(Icons.shopping_cart_rounded)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        child: ProductsToShow(),
      ),
    );
  }
}
