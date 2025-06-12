import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoe_fantastic/Features/AddItemToCart/cart_screen.dart';
import 'package:shoe_fantastic/Features/HomeScreen/RecentShoes/recent_shoes.dart';
import 'package:shoe_fantastic/Features/HomeScreen/RecommendedShoes/recommended_shoes.dart';
import 'package:shoe_fantastic/Features/HomeScreen/TrendingShoes/trending_shoes_screen.dart';
import 'package:shoe_fantastic/Features/HomeScreen/Widgets/custom_banner.dart';
import 'package:shoe_fantastic/Features/HomeScreen/Widgets/custom_searchbar.dart';
import 'package:shoe_fantastic/Features/HomeScreen/Widgets/display_shoes.dart';
import 'package:shoe_fantastic/Ui%20Helper/widgets/DrawerWidget/drawer_widget.dart';

import '../../Ui Helper/widgets/Filter/filter_widget.dart';
import 'ProductDetails/product_details_screen.dart';

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
      'price': '\$535',
    },
    {
      'image': 'girls.png',
      'brand': 'Nike',
      'model': 'Off-White x Air Jordan 1 Retro High OG UNC',
      'price': '\$700',
    },
    {
      'image': 'nike.jpeg',
      'brand': 'Stussy',
      'model': 'Stussy X Nike Air Force 1 Low Fossil',
      'price': '\$330',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusManager.instance.primaryFocus!.unfocus();
      },
      child: Scaffold(
        drawer: DrawerWidget(),
        appBar: appBar(context),
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
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TrendingShoesScreen(),
                        ));
                  },
                  bannerName: "Recent",
                ),
                RecentShoes(),
                CustomBanner(
                  bannerName: "Recommended for you",
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TrendingShoesScreen(),
                        ));
                  },
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
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProductDetailsScreen(
                                imageUrl: shoeData[index]['image'],
                                price: shoeData[index]['price'],
                                model: shoeData[index]['model'],
                              ),
                            ));
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Custom Appbar for home screen
  PreferredSizeWidget appBar(BuildContext context) {
    return PreferredSize(
      preferredSize: Size.fromHeight(155),
      child: AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0.0,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        toolbarHeight: 100,
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
        centerTitle: true,
        title: Image.asset("assets/icon/logo.png"),
        bottom: PreferredSize(
            preferredSize: Size.fromHeight(50),
            child: Row(
              children: [
                CustomSearchbar(),
                GestureDetector(
                  onTap: () {
                    filterWidget(context);
                  },
                  child: Icon(
                    Icons.filter_alt_rounded,
                    size: 30,
                  ),
                )
              ],
            )),
      ),
    );
  }
}
