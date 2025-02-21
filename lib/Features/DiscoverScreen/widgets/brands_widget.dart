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
    return GestureDetector(
      onTap: () {
        setState(() {
          onTap = !onTap;
        });
      },
      child: Container(
          margin: const EdgeInsets.only(bottom: 8),
          alignment: Alignment.center,
          height: MediaQuery.sizeOf(context).width / 10,
          width: MediaQuery.sizeOf(context).width / 3.5,
          decoration: BoxDecoration(
              color: onTap ? Palate.primaryColor : Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(color: Colors.black12, offset: Offset(0, 1)),
              ]),
          child: Text(widget.brandName,
              style: GoogleFonts.publicSans(
                  fontSize: 13,
                  fontWeight: FontWeight.w500,
                  color: onTap ? Colors.white : Colors.black))),
    );
  }
}
