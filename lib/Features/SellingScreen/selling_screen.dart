import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
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
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: 40,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  padding: const EdgeInsets.symmetric(horizontal: 7),
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
            ],
          ),
        ),
      ),
    );
  }
}
