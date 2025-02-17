import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoe_fantastic/Features/HomeScreen/Widgets/custom_banner.dart';
import 'package:shoe_fantastic/Features/HomeScreen/Widgets/custom_searchbar.dart';
import 'package:shoe_fantastic/Features/HomeScreen/Widgets/display_shoes.dart';
import 'package:shoe_fantastic/Features/HomeScreen/Widgets/recent_shoes.dart';
import 'package:shoe_fantastic/Features/HomeScreen/Widgets/recommended_shoes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 15,
          bottom: 8,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: 12,
            children: [
              DisplayShoes(),
              CustomBanner(
                onTap: () {},
                bannerName: "Recent",
              ),
              RecentShoes(),
              CustomBanner(
                bannerName: "Recommended for you",
                onTap: () {},
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: shoeData.length,
                itemBuilder: (context, index) {
                  return RecommendedShoes(
                    image: shoeData[index]['image'],
                    brand: shoeData[index]['brand'],
                    model: shoeData[index]['model'],
                    price: shoeData[index]['price'],
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Custom Appbar
  PreferredSizeWidget appBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(155),
      child: AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        toolbarHeight: 100,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart_rounded)),
        ],
        centerTitle: true,
        title: Image.asset("assets/icon/logo.png"),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Row(
              children: [
                CustomSearchbar(),
                Icon(
                  Icons.filter_alt_rounded,
                  size: 30,
                )
              ],
            )),
      ),
    );
  }
}
