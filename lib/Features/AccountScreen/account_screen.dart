import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Features/AccountScreen/widgets/text_input_field.dart';

import '../../Ui Helper/Color Palate/color_palate.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Account screen"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          spacing: 15,
          children: [
            CircleAvatar(
              radius: 60,
              backgroundColor: Palate.primaryColor,
              child: Icon(
                Icons.camera_alt_outlined,
                color: Colors.white,
              ),
            ),
            TextInputField(
              title: "username",
            ),
            TextInputField(
              title: "Email",
            ),
            TextInputField(
              title: "First Name",
            ),
            TextInputField(
              title: "Last Name",
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Gender",
                style: GoogleFonts.publicSans(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 17,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SelectGender(gender: "Man"),
                SelectGender(gender: 'Woman'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
