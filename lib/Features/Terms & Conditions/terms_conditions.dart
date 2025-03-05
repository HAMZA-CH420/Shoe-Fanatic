import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../PrivacyPolicy Screen/Widgets/custom_banner.dart';

class TermsConditions extends StatelessWidget {
  const TermsConditions({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Privacy Policy",
            style: GoogleFonts.publicSans(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            )),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 19,
            )),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          spacing: 15,
          children: [
            CustomBannerPolicy(
              bannerName: "Privacy Policy of Shoe Fanatic",
            ),
            Text(
              "The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using 'Content here, content here', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web sites still in their infancy. Various versions have evolved over the years.",
              style: GoogleFonts.publicSans(
                  fontWeight: FontWeight.w400, fontSize: 15),
            ),
            Text(
              " web page editors now use Lorem Ipsum as their default model text, and a search for 'lorem ipsum' will uncover many web site.",
              style: GoogleFonts.publicSans(
                  fontWeight: FontWeight.w400, fontSize: 15),
            ),
          ],
        ),
      ),
    );
  }
}
