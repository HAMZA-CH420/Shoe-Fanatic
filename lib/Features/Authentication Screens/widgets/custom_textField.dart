import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    this.isPassword = false,
    this.hintText = '',
    required this.controller,
  });
  final String hintText;
  final bool isPassword;
  final TextEditingController controller;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isHidden = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 1),
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 50,
      decoration: BoxDecoration(
          color: Palate.textFieldColor,
          borderRadius: BorderRadius.circular(25)),
      child: TextFormField(
        controller: widget.controller,
        obscureText: isHidden,
        decoration: InputDecoration(
            hintText: widget.hintText,
            border: InputBorder.none,
            suffixIcon: widget.isPassword
                ? InkWell(
                    onTap: () {
                      setState(() {
                        isHidden = !isHidden;
                      });
                    },
                    child: Icon(
                      isHidden ? Iconsax.eye : Iconsax.eye_slash,
                      color: Colors.grey,
                    ),
                  )
                : null),
      ),
    );
  }
}
