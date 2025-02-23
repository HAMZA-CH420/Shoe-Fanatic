import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class FavButton extends StatefulWidget {
  const FavButton({super.key, required this.isRecommended});
  final bool isRecommended;
  @override
  State<FavButton> createState() => _FavButtonState();
}

class _FavButtonState extends State<FavButton> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GestureDetector(
          onTap: () {
            setState(() {
              isFav ? null : _showAlertDialogue(context);
              isFav = !isFav;
            });
          },
          child: Icon(
            isFav ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
            size: 23,
            color: isFav
                ? Colors.red
                : widget.isRecommended
                    ? Colors.black
                    : Colors.white,
          )),
    );
  }

  Future<void> _showAlertDialogue(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Column(
          spacing: 10,
          children: [
            SvgPicture.asset("assets/images/fav-image.svg"),
            Text(
              'Favorites added!',
              style: GoogleFonts.poppins(
                fontSize: 20,
                fontWeight: FontWeight.w700,
                color: Palate.blackColor,
              ),
            ),
            SizedBox(
              width: 200,
              height: 50,
              child: Text(
                  'By visiting your favorites, you can see everything you like',
                  style: GoogleFonts.poppins(
                    fontSize: 13,
                    fontWeight: FontWeight.w500,
                    color: Palate.blackColor,
                  )),
            ),
            AlertDialogueButton(
              onTap: () async {
                final pref = await SharedPreferences.getInstance();
                pref.setBool("isFav", false);
                Navigator.pop(context);
              },
              btnName: "Got it",
              isSecondButton: false,
            ),
            AlertDialogueButton(
              onTap: () {},
              btnName: "Go to Favorites",
              isSecondButton: true,
            ),
          ],
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}

class AlertDialogueButton extends StatelessWidget {
  const AlertDialogueButton(
      {super.key,
      required this.btnName,
      required this.isSecondButton,
      required this.onTap});
  final String btnName;
  final bool isSecondButton;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          fixedSize: Size(200, 40),
          backgroundColor: isSecondButton ? Colors.white : Palate.primaryColor,
        ),
        child: Text(
          btnName,
          style: GoogleFonts.publicSans(
            fontWeight: FontWeight.w600,
            fontSize: 16,
            color: isSecondButton ? Palate.blackColor : Colors.white,
          ),
        ));
  }
}
