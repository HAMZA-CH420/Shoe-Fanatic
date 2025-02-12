import 'package:flutter/material.dart';

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
      var size, String image, String brand, String model, String price) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      height: 100,
      width: size.width,
      child: Row(
        children: [
          SizedBox(
            width: 117,
            height: 100,
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
          Column(
            children: [],
          ),
        ],
      ),
    );
  }
}
