import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Features/Authentication%20Screens/SignUpScreen/enable_notification.dart';
import 'package:shoe_fantastic/Features/Authentication%20Screens/widgets/custom_button.dart';
import 'package:shoe_fantastic/Features/Authentication%20Screens/widgets/custom_textfield.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class SizeScreen extends StatelessWidget {
  SizeScreen({super.key});
  final TextEditingController sizeController = TextEditingController();
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
                height: 111,
              ),
              Text(
                "Select your size",
                style: GoogleFonts.publicSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Palate.blackColor),
              ),
              const SizedBox(
                height: 40,
              ),
              CustomTextField(
                isPassword: false,
                controller: sizeController,
                hintText: "M 10.0 / W 11.5",
              ),
              const SizedBox(
                height: 40,
              ),
              CustomButton(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EnableNotification(),
                        ));
                  },
                  btnName: "Next")
            ],
          ),
        ),
      ),
    );
  }
}
