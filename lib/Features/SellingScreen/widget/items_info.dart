import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemsInfo extends StatelessWidget {
  ItemsInfo({super.key});
  final Map<String, dynamic> itemsInfo = {
    "activeItems": "10",
    "soldItems": "10",
    "totalItems": "20",
  };
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Wrap(
      spacing: 17,
      children: [
        detailBox(
            size, Colors.pinkAccent, "Active Items", itemsInfo["activeItems"]),
        detailBox(size, Colors.orange, "Total Items", itemsInfo["totalItems"]),
        detailBox(
            size, Colors.lightBlueAccent, "Sold Items", itemsInfo["soldItems"]),
      ],
    );
  }

  Widget detailBox(var size, Color color, String title, String count) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.8),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      height: size.height / 7,
      width: size.width / 2.7,
      child: Column(
        spacing: 8,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
          Text(
            count,
            style: GoogleFonts.poppins(
              fontSize: 24,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
