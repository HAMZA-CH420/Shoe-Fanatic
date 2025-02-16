import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Features/SellingScreen/widget/custom_tabbar_widget.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class SellingScreen extends StatelessWidget {
  const SellingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Selling",
            style: GoogleFonts.publicSans(
                fontWeight: FontWeight.w500,
                fontSize: 20,
                color: Palate.blackColor),
          ),
          centerTitle: true,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
          bottom: tabBar(),
          toolbarHeight: 90,
        ),
      ),
    );
  }

  /// Tab bar widget
  PreferredSize tabBar() {
    return PreferredSize(
      preferredSize: Size.fromHeight(56),
      child: Wrap(
        children: [
          CustomTabBarWidget(name: "Home"),
          CustomTabBarWidget(name: "My Shoes"),
          CustomTabBarWidget(name: "Sold"),
        ],
      ),
    );
  }
}
