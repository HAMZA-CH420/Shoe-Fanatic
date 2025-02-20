import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class DraftWidget extends StatelessWidget {
  const DraftWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),
      child: Column(
        spacing: 12,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Drafts",
              style: GoogleFonts.publicSans(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Palate.blackColor,
              ),
            ),
          ),
          Wrap(
            spacing: 20,
            children: [
              Container(
                height: MediaQuery.sizeOf(context).height / 6,
                width: MediaQuery.sizeOf(context).width / 2.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: DecorationImage(
                      image: AssetImage("assets/images/draft.jpeg"),
                      fit: BoxFit.cover,
                    )),
              ),
              Container(
                height: MediaQuery.sizeOf(context).height / 6,
                width: MediaQuery.sizeOf(context).width / 2.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.grey.shade300),
                child: Center(
                  child: Icon(
                    Icons.image,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
