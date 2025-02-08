import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class CustomTestField extends StatefulWidget {
  const CustomTestField({
    super.key,
    this.isPassword = false,
  });
  final bool isPassword;

  @override
  State<CustomTestField> createState() => _CustomTestFieldState();
}

class _CustomTestFieldState extends State<CustomTestField> {
  bool isHidden = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 3),
      margin: const EdgeInsets.symmetric(vertical: 10),
      height: 50,
      decoration: BoxDecoration(
          color: Palate.textFieldColor,
          borderRadius: BorderRadius.circular(25)),
      child: TextField(
        obscureText: isHidden,
        decoration: InputDecoration(
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
