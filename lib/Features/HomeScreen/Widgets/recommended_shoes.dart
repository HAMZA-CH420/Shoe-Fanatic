import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Features/HomeScreen/Widgets/fav_button.dart';

import '../../../Ui Helper/Color Palate/color_palate.dart';

class RecommendedShoes extends StatelessWidget {
  RecommendedShoes({super.key});
  final List<Map<String, dynamic>> shoeData = [
    {
      'image': 'adidas.jpeg',
      'brand': 'Yeezy',
      'model': 'Yeezy Boost 700 Inertia',
      'price': '\$215',
    },
    {
      'image': 'jordon.jpeg',
      'brand': 'Jordan',
      'model': 'Air Jordan 4 Retro OG Bred 2019',
      'price': '\$525',
    },
    {
      'image': 'girls.png',
      'brand': 'Nike',
      'model': 'Off-White x Air Jordan 1 Retro High OG UNC',
      'price': '\$600',
    },
    {
      'image': 'nike.jpeg',
      'brand': 'Stussy',
      'model': 'Stussy X Nike Air Force 1 Low Fossil',
      'price': '\$325',
    },
  ];
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.builder(
      itemCount: shoeData.length,
      itemBuilder: (context, index) {
        return recommendedShoes(
          size,
          shoeData[index]['image'],
          shoeData[index]['brand'],
          shoeData[index]['model'],
          shoeData[index]['price'],
        );
      },
    );
  }

  /// Widget to display
  Widget recommendedShoes(
    var size,
    String image,
    String brand,
    String model,
    String price,
  ) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
      ),
      height: size.height / 8.2,
      width: size.width,
      child: Row(
        spacing: 12,
        children: [
          SizedBox(
            width: size.width / 3,
            height: size.height / 8.2,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomLeft: Radius.circular(30),
              ),
              child: Image.asset(
                'assets/images/$image',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            width: 120,
            height: 120,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  brand,
                  style: GoogleFonts.publicSans(
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Palate.blackColor,
                  ),
                ),
                Text(
                  model,
                  style: GoogleFonts.publicSans(
                    fontWeight: FontWeight.w400,
                    fontSize: 13,
                    color: Palate.blackColor,
                  ),
                ),
                Text(
                  price,
                  style: GoogleFonts.publicSans(
                    fontWeight: FontWeight.w500,
                    fontSize: 14,
                    color: Palate.primaryColor,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: size.width / 24,
          ),
          Align(
            alignment: Alignment.topRight,
            child: FavButton(
              isRecommended: true,
            ),
          ),
        ],
      ),
    );
  }
}
