import 'package:flutter/material.dart';
import 'package:shoe_fantastic/Features/HomeScreen/Widgets/custom_searchbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(),
      body: Center(
        child: Text("Hi, Welcome Aboard"),
      ),
    );
  }

  PreferredSizeWidget appBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(155),
      child: AppBar(
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
