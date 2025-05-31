import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shoe_fantastic/Features/Authentication%20Screens/LoginScreen/login_screen.dart';
import 'package:shoe_fantastic/Features/DrawerScreens/ContactScreen/contact_screen.dart';
import 'package:shoe_fantastic/Features/DrawerScreens/FavouriteScreen/fav_screen.dart';
import 'package:shoe_fantastic/Features/DrawerScreens/RequestShippingLabelScreen/request_shipping_label_screen.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';
import 'package:shoe_fantastic/Ui%20Helper/widgets/DrawerWidget/drawer_helper_widget.dart';

import '../../../Features/DrawerScreens/NotificationScreen/notification_screen.dart';
import '../../../Features/DrawerScreens/OrderScreen/order_screen.dart';
import '../../../Features/DrawerScreens/PrivacyPolicy Screen/privacy_policy_screen.dart';
import '../../../Features/DrawerScreens/Terms & Conditions/terms_conditions.dart';
import '../../../Features/DrawerScreens/TradingOffer/trading_offer_screen.dart';

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
            height: 15,
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
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RequestShippingLabelScreen(),
                  ));
            },
            banner: "Request Shipping Label",
            icon: Icons.privacy_tip,
          ),
          DrawerHelperWidget(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => FavouriteScreen(),
                  ));
            },
            banner: "Favourites",
            icon: CupertinoIcons.heart_fill,
          ),
          DrawerHelperWidget(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ContactScreen(),
                  ));
            },
            banner: "Contact Us",
            icon: CupertinoIcons.chat_bubble_text_fill,
          ),
          DrawerHelperWidget(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TermsConditions(),
                  ));
            },
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
          SizedBox(
            height: MediaQuery.sizeOf(context).height / 30,
          ),
          logOutButton(context),
        ],
      ),
    );
  }

  Widget logOutButton(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        logOutDialogue(context);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: MediaQuery.sizeOf(context).height / 18,
        width: MediaQuery.sizeOf(context).width / 3,
        decoration: BoxDecoration(
          color: Color(0xffFF7070),
          borderRadius: BorderRadius.circular(22),
        ),
        alignment: Alignment.center,
        child: Row(
          children: [
            Icon(
              Icons.login,
              color: Colors.white,
            ),
            Text(
              " Logout",
              style: GoogleFonts.publicSans(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            )
          ],
        ),
      ),
    );
  }

  //show AlertDialogue while logging out

  Future<void> logOutDialogue(BuildContext context) async {
    return await showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            "Are you sure you want to logout?",
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("No")),
            TextButton(
                onPressed: () async {
                  var pref = await SharedPreferences.getInstance();
                  pref.setBool("isLoggedIn", false);
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ));
                  return showToast(
                    "Logout Successful",
                    Colors.green,
                  );
                },
                child: Text("Yes")),
          ],
        );
      },
    );
  }

  void showToast(String msg, Color bgColor) {
    Fluttertoast.showToast(
      msg: msg,
      backgroundColor: bgColor,
    );
  }
}
