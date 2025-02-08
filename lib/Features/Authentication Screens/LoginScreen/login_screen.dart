import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Features/Authentication%20Screens/widgets/custom_button.dart';
import 'package:shoe_fantastic/Features/Authentication%20Screens/widgets/custom_continue_button.dart';
import 'package:shoe_fantastic/Features/Authentication%20Screens/widgets/custom_testfield.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          FocusManager.instance.primaryFocus?.unfocus();
        },
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 55),
                Align(
                    alignment: Alignment.center,
                    child: Image.asset("assets/icon/logo.png")),
                const SizedBox(height: 25),
                Text(
                  "Log In",
                  style: GoogleFonts.publicSans(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                    color: Palate.blackColor,
                  ),
                ),
                const SizedBox(height: 7),
                Text(
                  "Welcome back",
                  style: GoogleFonts.publicSans(
                      fontSize: 17, fontWeight: FontWeight.w400),
                ),
                const SizedBox(height: 30),
                Row(
                  spacing: 3,
                  children: [
                    Icon(
                      Icons.email,
                      size: 20,
                      color: Palate.blackColor,
                    ),
                    Text(
                      "Email",
                      style: GoogleFonts.publicSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Palate.blackColor),
                    )
                  ],
                ),
                CustomTestField(),
                const SizedBox(
                  height: 6,
                ),
                Row(
                  spacing: 3,
                  children: [
                    Icon(
                      Icons.lock_clock_rounded,
                      size: 21,
                      color: Palate.blackColor,
                    ),
                    Text(
                      "Password",
                      style: GoogleFonts.publicSans(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Palate.blackColor),
                    )
                  ],
                ),
                CustomTestField(
                  isPassword: true,
                ),
                Align(
                    alignment: Alignment.centerRight,
                    child: InkWell(
                      onTap: () {},
                      child: Text(
                        "Forgot password?",
                        style: GoogleFonts.publicSans(
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            color: Palate.blackColor),
                      ),
                    )),
                CustomButton(
                  onTap: () {},
                ),
                Text(
                  "Or with",
                  style: GoogleFonts.publicSans(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Palate.blackColor,
                  ),
                ),
                CustomContinueButton(
                  icon: "assets/icon/google.svg",
                  btnName: "Continue with Google",
                  onTap: () {},
                ),
                CustomContinueButton(
                  icon: "assets/icon/google.svg",
                  btnName: "Continue with Apple",
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
