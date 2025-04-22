import 'package:flutter/material.dart';

class ItemCounter extends StatelessWidget {
  const ItemCounter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey.shade300,
      ),
    );
  }
}
