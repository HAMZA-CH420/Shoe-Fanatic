import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavButton extends StatefulWidget {
  const FavButton({super.key});

  @override
  State<FavButton> createState() => _FavButtonState();
}

class _FavButtonState extends State<FavButton> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: IconButton(
          onPressed: () {
            setState(() {
              isFav = !isFav;
            });
          },
          icon: Icon(
            isFav ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
            size: 23,
            color: isFav ? Colors.red : Colors.white,
          )),
    );
  }
}
