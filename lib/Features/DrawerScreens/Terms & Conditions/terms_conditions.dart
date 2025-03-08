import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

import '../PrivacyPolicy Screen/Widgets/custom_banner.dart';

class TermsConditions extends StatefulWidget {
  const TermsConditions({super.key});

  @override
  State<TermsConditions> createState() => _TermsConditionsState();
}

class _TermsConditionsState extends State<TermsConditions> {
  bool isTermsSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Terms & Conditions",
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
              bannerName: "Terms & Conditions of Shoe Fanatic",
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
            Row(
              children: [
                Radio.adaptive(
                  toggleable: true,
                  activeColor: Palate.primaryColor,
                  value: true,
                  groupValue: isTermsSelected,
                  onChanged: (value) {
                    setState(() {
                      isTermsSelected = !isTermsSelected;
                    });
                  },
                ),
                Text(
                  "I agree with the ",
                  style: GoogleFonts.publicSans(
                      fontWeight: FontWeight.w600,
                      color: Palate.blackColor,
                      fontSize: 15),
                ),
                Text(
                  "Terms and Conditions",
                  style: GoogleFonts.publicSans(
                      fontWeight: FontWeight.w600,
                      color: Palate.primaryColor,
                      fontSize: 15),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.sizeOf(context).height / 5,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: Container(
                height: MediaQuery.sizeOf(context).height / 17,
                width: double.infinity,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Palate.primaryColor,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  "Continue",
                  style: GoogleFonts.publicSans(
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                      fontSize: 17),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
