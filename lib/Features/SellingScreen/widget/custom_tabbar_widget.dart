import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Ui Helper/Color Palate/color_palate.dart';

class CustomTabBarWidget extends StatefulWidget {
  const CustomTabBarWidget({super.key, required this.name});
  final String name;
  @override
  State<CustomTabBarWidget> createState() => _CustomTabBarWidgetState();
}

class _CustomTabBarWidgetState extends State<CustomTabBarWidget> {
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
          backgroundColor: onTap ? Palate.primaryColor : Color(0XFFE6E6E6),
          elevation: 0.4,
        ),
        child: Text(widget.name,
            style: GoogleFonts.publicSans(
                fontSize: 13,
                fontWeight: FontWeight.w500,
                color: onTap ? Colors.white : Colors.grey)));
  }
}
