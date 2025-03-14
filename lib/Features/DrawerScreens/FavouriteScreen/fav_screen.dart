import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Features/DrawerScreens/FavouriteScreen/Widgets/fav_widget.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Favourites",
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          spacing: 5,
          children: [
            FavWidget(
              price: "\$150",
              model: "Air Force Shoe Sneakers",
              shoeSize: "7",
              color: "Blue",
            ),
            FavWidget(
              price: "\$150",
              model: "Air Force Shoe Sneakers",
              shoeSize: "7",
              color: "Blue",
            ),
            FavWidget(
              price: "\$150",
              model: "Air Force Shoe Sneakers",
              shoeSize: "7",
              color: "Blue",
            ),
          ],
        ),
      ),
    );
  }
}
