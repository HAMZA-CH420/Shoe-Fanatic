import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_fantastic/Features/AccountScreen/account_screen.dart';
import 'package:shoe_fantastic/Features/DiscoverScreen/discover_screen.dart';
import 'package:shoe_fantastic/Features/HomeScreen/home_screen.dart';
import 'package:shoe_fantastic/Features/MessageScreen/message_screen.dart';
import 'package:shoe_fantastic/Features/SellingScreen/selling_screen.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int currentIndex = 0;
  final List<Widget> screens = [
    const HomeScreen(),
    const DiscoverScreen(),
    const SellingScreen(),
    const MessageScreen(),
    const AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        child: BottomNavigationBar(
          onTap: (value) {
            currentIndex = value;
            setState(() {});
          },
          currentIndex: currentIndex,
          unselectedItemColor: Palate.blackColor,
          selectedItemColor: Palate.primaryColor,
          backgroundColor: Color(0XFFFFFFFF),
          iconSize: 28,
          selectedLabelStyle: GoogleFonts.oxygen(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
          unselectedLabelStyle: GoogleFonts.oxygen(
            fontSize: 12,
            fontWeight: FontWeight.w600,
          ),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(icon: Icon(Iconsax.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.search_normal), label: 'Discover'),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.shopping_cart), label: 'Selling'),
            BottomNavigationBarItem(
                icon: Icon(Iconsax.message), label: 'Messages'),
            BottomNavigationBarItem(
                icon: Icon(Icons.perm_identity_outlined), label: 'Account'),
          ],
        ),
      ),
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),
    );
  }
}
