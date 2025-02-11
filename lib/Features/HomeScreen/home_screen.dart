import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shoe_fantastic/Features/HomeScreen/Widgets/custom_banner.dart';
import 'package:shoe_fantastic/Features/HomeScreen/Widgets/custom_searchbar.dart';
import 'package:shoe_fantastic/Features/HomeScreen/Widgets/display_shoes.dart';
import 'package:shoe_fantastic/Features/HomeScreen/Widgets/recent_shoes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
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
          child: SizedBox(
            height: size.height / 1.3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 10,
              children: [
                DisplayShoes(),
                CustomBanner(
                  onTap: () {},
                  bannerName: "Recent",
                ),
                RecentShoes(),
              ],
            ),
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
