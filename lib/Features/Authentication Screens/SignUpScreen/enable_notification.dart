import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shoe_fantastic/Features/Authentication%20Screens/widgets/custom_button.dart';
import 'package:shoe_fantastic/Features/BottomNavBar/bottom_nav_bar.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

import '../../../Services/Notification Services/notification_services.dart';

class EnableNotification extends StatelessWidget {
  EnableNotification({super.key});
  final TextEditingController usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 55,
              ),
              Image.asset("assets/icon/logo.png"),
              const SizedBox(
                height: 90,
              ),
              Text(
                "We can update you on your",
                style: GoogleFonts.publicSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Palate.blackColor),
              ),
              Text(
                "orders and sales in real-time",
                style: GoogleFonts.publicSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Palate.blackColor),
              ),
              Text(
                "via push notifications",
                style: GoogleFonts.publicSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Palate.blackColor),
              ),
              const SizedBox(
                height: 80,
              ),
              CustomButton(
                onTap: () async {
                  var dialogue = _showAlertDialogue(
                      context,
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (_) => BottomNavBar(),
                          )));
                  NotificationServices().notificationPermission();
                  bool isGiven = await Permission.notification.isGranted;
                  if (isGiven) {
                    dialogue;
                  }
                },
                btnName: "Enable notification",
              ),
              InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => BottomNavBar(),
                      ));
                },
                child: Text(
                  "Skip",
                  style: GoogleFonts.publicSans(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Palate.blackColor),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _showAlertDialogue(BuildContext context, var navigate) async {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          content: SizedBox(
            height: 200,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 20,
              children: [
                SvgPicture.asset("assets/images/done_check.svg"),
                Text(
                  "Notification enabled",
                  style: GoogleFonts.publicSans(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Color(0XFF4CAF50)),
                )
              ],
            ),
          ),
          actions: [
            InkWell(
                onTap: () async {
                  var pref = await SharedPreferences.getInstance();
                  pref.setBool("isLoggedIn", true);
                  navigate;
                },
                child: Text("continue to app"))
          ],
        );
      },
    );
  }
}
