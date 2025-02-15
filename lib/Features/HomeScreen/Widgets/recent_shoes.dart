import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Features/HomeScreen/Widgets/fav_button.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class RecentShoes extends StatelessWidget {
  RecentShoes({super.key});
  final List<Map<String, dynamic>> shoeData = [
    {
      "image": "recent1.png",
      "brand": "Nike",
      "model": "Nike Dunk Low SB X Sting-water",
      "price": "\$250",
    },
    {
      "image": "recent2.png",
      "brand": "Off-White",
      "model": "Off-White x Chuck 70 The Ten",
      "price": "\$1000",
    },
    {
      "image": "recent3.png",
      "brand": "Jordan",
      "model": "Air Jordan 6 Retro OG Carmine",
      "price": "\$245",
    },
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height / 4,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: shoeData.length,
        itemBuilder: (context, index) {
          return widget(
            shoeData[index]['image'],
            shoeData[index]['brand'],
            shoeData[index]['model'],
            shoeData[index]['price'],
          );
        },
      ),
    );
  }

  ///Widget for recent shoes
  Widget widget(String image, String brand, String model, String price) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      height: 215,
      width: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 117,
            width: 150,
            child: Stack(
              fit: StackFit.expand,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Image.asset(
                    "assets/images/$image",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.black.withOpacity(0.2),
                        Colors.transparent,
                      ],
                    ),
                  ),
                ),
                Positioned(
                    top: 2,
                    left: 99,
                    child: FavButton(
                      isRecommended: false,
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: Column(
              spacing: 5,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  brand,
                  style: GoogleFonts.publicSans(
                    fontSize: 13,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Text(
                  model,
                  style: GoogleFonts.publicSans(
                      fontWeight: FontWeight.w400, fontSize: 13),
                ),
                Text(
                  price,
                  style: GoogleFonts.publicSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Palate.primaryColor,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
