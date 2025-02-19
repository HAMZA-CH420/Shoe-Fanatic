import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Features/SellingScreen/TabScreens/home.dart';
import 'package:shoe_fantastic/Features/SellingScreen/TabScreens/myshoes.dart';
import 'package:shoe_fantastic/Features/SellingScreen/TabScreens/sold.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class SellingScreen extends StatefulWidget {
  const SellingScreen({super.key});

  @override
  State<SellingScreen> createState() => _SellingScreenState();
}

class _SellingScreenState extends State<SellingScreen> {
  final List<String> tabBarTitles = [
    "Home",
    "My Shoes",
    "Sold",
  ];
  final List<Widget> screens = [
    Home(),
    MyShoes(),
    Sold(),
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        shape: CircleBorder(),
        elevation: 0,
        backgroundColor: Palate.primaryColor,
        child: Icon(
          Icons.add,
          color: Colors.white,
          size: 30,
        ),
      ),
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
      scrolledUnderElevation: 0.0,
      elevation: 0,
      backgroundColor: Colors.transparent,
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      title: Text(
        "Selling",
        style: GoogleFonts.publicSans(
            fontWeight: FontWeight.w500,
            fontSize: 20,
            color: Palate.blackColor),
      ),
      centerTitle: true,
      leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(65),
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
                    width: size.width / 3.7,
                    margin: const EdgeInsets.only(left: 5),
                    decoration: BoxDecoration(
                        color: currentIndex == index
                            ? Palate.primaryColor
                            : Color(0xffD9D9D9),
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
