import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class BrandsWidget extends StatefulWidget {
  const BrandsWidget({super.key, required this.brandName});
  final String brandName;
  @override
  State<BrandsWidget> createState() => _BrandsWidgetState();
}

class _BrandsWidgetState extends State<BrandsWidget> {
  bool onTap = false;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            onTap = !onTap;
          });
        },
        style: ElevatedButton.styleFrom(
          fixedSize: Size(115, 35),
          backgroundColor: onTap ? Palate.primaryColor : Colors.white,
          elevation: 0.4,
        ),
        child: Text(widget.brandName,
            style: GoogleFonts.publicSans(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: onTap ? Colors.white : Colors.black)));
  }
}
