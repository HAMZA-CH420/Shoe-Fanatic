import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Features/Authentication%20Screens/widgets/custom_button.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

import '../../../viewModel/Notification Services/notification_services.dart';

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
                onTap: () {
                  NotificationServices().notificationPermission();
                },
                btnName: "Enable notification",
              ),
              InkWell(
                onTap: () {},
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
}
