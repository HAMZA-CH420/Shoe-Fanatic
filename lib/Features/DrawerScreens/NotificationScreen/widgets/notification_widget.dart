import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class NotificationWidget extends StatelessWidget {
  const NotificationWidget(
      {super.key,
      required this.isNew,
      required this.title,
      required this.description,
      required this.date});
  final bool isNew;
  final String title, description, date;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Stack(
      children: [
        Container(
          height: size.height / 11.5,
          width: size.width,
          padding: const EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 10,
          ),
          margin: const EdgeInsets.symmetric(
            vertical: 5,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: isNew ? Colors.blue.shade50 : Colors.transparent,
          ),
          child: Column(
            spacing: 5,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: GoogleFonts.publicSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  color: isNew ? Palate.primaryColor : Palate.blackColor,
                ),
              ),
              Text(
                description,
                style: GoogleFonts.publicSans(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: isNew ? Palate.primaryColor : Palate.blackColor,
                ),
              ),
            ],
          ),
        ),
        isNew
            ? Positioned(
                right: -1.5,
                child: Icon(
                  Icons.circle,
                  color: Palate.primaryColor,
                  size: 18,
                ),
              )
            : SizedBox.shrink(),
        Positioned(
            right: 25,
            top: 10,
            child: Text(
              date,
              style: GoogleFonts.publicSans(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: isNew ? Palate.primaryColor : Palate.blackColor,
              ),
            ))
      ],
    );
  }
}
