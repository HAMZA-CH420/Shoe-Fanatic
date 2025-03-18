import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Features/DrawerScreens/ContactScreen/widgets/banner.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0.0,
        elevation: 0,
        backgroundColor: Colors.transparent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        title: Text("Contact Us",
            style: GoogleFonts.publicSans(
              fontWeight: FontWeight.w600,
              fontSize: 18,
            )),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 19,
            )),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
          child: Column(
            spacing: 30,
            children: [
              ContactTextField(
                bannerName: "Name",
              ),
              ContactTextField(
                bannerName: "Email",
              ),
              ContactTextField(
                isDescription: true,
                bannerName: "Description",
              ),
              ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text("Response Sent Successfully"),
                      showCloseIcon: true,
                    ));
                  },
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(MediaQuery.sizeOf(context).width, 50),
                      backgroundColor: Palate.primaryColor),
                  child: Text(
                    "Send",
                    style: TextStyle(color: Colors.white, fontSize: 17),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
