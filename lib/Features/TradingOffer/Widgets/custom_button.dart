import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class CustomButtonTrade extends StatelessWidget {
  const CustomButtonTrade(
      {super.key,
      required this.btnName,
      this.isTradeButton = false,
      required this.onTap});
  final String btnName;
  final bool isTradeButton;
  final VoidCallback onTap;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        fixedSize: Size(135, 50),
        backgroundColor: isTradeButton ? Palate.primaryColor : Colors.white,
      ),
      child: Text(
        btnName,
        style: GoogleFonts.publicSans(
          fontWeight: FontWeight.w500,
          fontSize: 17,
          color: isTradeButton ? Colors.white : Colors.black,
        ),
      ),
    );
  }
}
