import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Features/NotificationScreen/notification_screen.dart';
import 'package:shoe_fantastic/Features/OrderScreen/order_screen.dart';
import 'package:shoe_fantastic/Features/PrivacyPolicy%20Screen/privacy_policy_screen.dart';
import 'package:shoe_fantastic/Features/TradingOffer/trading_offer_screen.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';
import 'package:shoe_fantastic/Ui%20Helper/widgets/DrawerWidget/drawer_helper_widget.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.sizeOf(context).width / 1.3,
      child: Column(
        spacing: 15,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Shoe Fanatic",
            style: GoogleFonts.publicSans(
              fontSize: MediaQuery.sizeOf(context).width / 14,
              fontWeight: FontWeight.w800,
              color: Palate.primaryColor,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          DrawerHelperWidget(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NotificationScreen(),
                  ));
            },
            banner: "Notification",
            icon: Icons.notifications,
          ),
          DrawerHelperWidget(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => OrderScreen(),
                  ));
            },
            banner: "Order History",
            icon: Icons.description,
          ),
          DrawerHelperWidget(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TradingOfferScreen(),
                  ));
            },
            banner: "Trading and Offers",
            icon: Icons.wifi_protected_setup,
          ),
          DrawerHelperWidget(
            onTap: () {},
            banner: "Request Shipping Label",
            icon: Icons.privacy_tip,
          ),
          DrawerHelperWidget(
            onTap: () {},
            banner: "Favourites",
            icon: CupertinoIcons.heart_fill,
          ),
          DrawerHelperWidget(
            onTap: () {},
            banner: "Contact Us",
            icon: CupertinoIcons.chat_bubble_text_fill,
          ),
          DrawerHelperWidget(
            onTap: () {},
            banner: "Terms & Conditions",
            icon: Icons.description,
          ),
          DrawerHelperWidget(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => PrivacyPolicyScreen(),
                  ));
            },
            banner: "Privacy Policy",
            icon: Icons.privacy_tip,
          ),
        ],
      ),
    );
  }
}
