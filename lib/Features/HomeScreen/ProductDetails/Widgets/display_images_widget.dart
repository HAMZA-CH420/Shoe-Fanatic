import 'package:flutter/material.dart';

class DisplayImagesWidget extends StatelessWidget {
  const DisplayImagesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Container(
      height: size.height / 4,
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          image: AssetImage("assets/images/recent1.png"),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
