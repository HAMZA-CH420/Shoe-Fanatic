import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FavButton extends StatefulWidget {
  const FavButton({super.key, required this.isRecommended});
  final bool isRecommended;
  @override
  State<FavButton> createState() => _FavButtonState();
}

class _FavButtonState extends State<FavButton> {
  bool isFav = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: GestureDetector(
          onTap: () {
            setState(() {
              isFav = !isFav;
            });
          },
          child: Icon(
            isFav ? CupertinoIcons.heart_fill : CupertinoIcons.heart,
            size: 23,
            color: isFav
                ? Colors.red
                : widget.isRecommended
                    ? Colors.black
                    : Colors.white,
          )),
    );
  }
}
