import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.isPassword,
    this.hintText = '',
    required this.controller,
    this.validator,
  });
  final String hintText;
  final bool isPassword;
  final TextEditingController controller;
  final FormFieldValidator<String>? validator;
  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isHidden = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 60,
      decoration: BoxDecoration(
          color: Palate.textFieldColor,
          borderRadius: BorderRadius.circular(25)),
      child: TextFormField(
        validator: widget.validator,
        controller: widget.controller,
        obscureText: widget.isPassword ? isHidden : false,
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
