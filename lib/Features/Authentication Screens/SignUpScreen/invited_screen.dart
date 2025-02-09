import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Features/Authentication%20Screens/SignUpScreen/size_screen.dart';
import 'package:shoe_fantastic/Features/Authentication%20Screens/widgets/custom_button.dart';
import 'package:shoe_fantastic/Features/Authentication%20Screens/widgets/custom_textfield.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class InvitedScreen extends StatelessWidget {
  InvitedScreen({super.key});
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
                height: 84,
              ),
              Text(
                "Did someone invited you?",
                style: GoogleFonts.publicSans(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Palate.blackColor),
              ),
              Text(
                "Enter their username if yes",
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
                controller: usernameController,
                hintText: "Username",
              ),
              const SizedBox(
                height: 40,
              ),
              CustomButton(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SizeScreen(),
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
