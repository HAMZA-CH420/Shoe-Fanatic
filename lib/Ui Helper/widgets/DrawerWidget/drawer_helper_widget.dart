import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class DrawerHelperWidget extends StatelessWidget {
  const DrawerHelperWidget(
      {super.key,
      required this.banner,
      required this.icon,
      required this.onTap});
  final String banner;
  final IconData icon;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.sizeOf(context).width / 1.5,
        height: MediaQuery.sizeOf(context).height / 17,
        decoration: BoxDecoration(
          color: Colors.blue.shade50,
          borderRadius: BorderRadius.circular(26),
        ),
        child: Row(
          spacing: 25,
          children: [
            CircleAvatar(
              backgroundColor: Palate.primaryColor,
              radius: 24,
              child: Center(
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 27,
                ),
              ),
            ),
            Text(
              banner,
              style: GoogleFonts.oxygen(
                fontSize: 16,
                fontWeight: FontWeight.w700,
                color: Palate.primaryColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
