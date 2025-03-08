import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Ui Helper/Color Palate/color_palate.dart';
import 'TabBarScreens/current.dart';
import 'TabBarScreens/past.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  final List<String> tabBarTitles = [
    "Past",
    "Current",
  ];
  final List<Widget> screens = [
    Past(),
    Current(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      appBar: appBar(size),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
    );
  }

  /// Custom Appbar
  AppBar appBar(var size) {
    return AppBar(
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            size: 18,
          )),
      scrolledUnderElevation: 0.0,
      elevation: 0,
      backgroundColor: Colors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      title: Text(
        "Order History",
        style: GoogleFonts.publicSans(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: Palate.blackColor),
      ),
      centerTitle: true,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(70),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 10),
          child: SizedBox(
            width: double.infinity,
            height: 40,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: NeverScrollableScrollPhysics(),
              itemCount: tabBarTitles.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 200),
                    width: size.width / 2.6,
                    margin: const EdgeInsets.only(left: 16),
                    decoration: BoxDecoration(
                        color: currentIndex == index
                            ? Palate.primaryColor
                            : Colors.grey.shade200,
                        borderRadius: BorderRadius.circular(25)),
                    alignment: Alignment.center,
                    child: Text(
                      tabBarTitles[index],
                      style: GoogleFonts.publicSans(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: currentIndex == index
                            ? Colors.white
                            : Colors.black38,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
