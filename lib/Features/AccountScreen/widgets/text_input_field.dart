import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class TextInputField extends StatelessWidget {
  const TextInputField({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 10,
      children: [
        Text(
          title,
          style: GoogleFonts.publicSans(
            fontWeight: FontWeight.w600,
            color: Colors.black,
            fontSize: 17,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 13),
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: Colors.grey.shade200,
          ),
          child: TextField(
            decoration: InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
      ],
    );
  }
}

class SelectGender extends StatefulWidget {
  const SelectGender({super.key, required this.gender});
  final String gender;

  @override
  State<SelectGender> createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {
  bool isTapped = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isTapped = !isTapped;
        });
      },
      child: Container(
        alignment: Alignment.center,
        height: 50,
        width: 150,
        decoration: BoxDecoration(
          color: isTapped ? Palate.primaryColor : Colors.grey.shade200,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text(
          widget.gender,
          style: GoogleFonts.publicSans(
              fontWeight: FontWeight.w500,
              color: isTapped ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
