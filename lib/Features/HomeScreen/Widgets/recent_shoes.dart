import 'package:flutter/material.dart';

class RecentShoes extends StatelessWidget {
  RecentShoes({super.key});
  final List<Image> images = [
    Image.asset("assets/images/recent1.png"),
    Image.asset("assets/images/recent2.png"),
    Image.asset("assets/images/recent3.png"),
  ];
  @override
  Widget build(BuildContext context) {
    return widget();
  }

  Widget widget() {
    return SizedBox(
      height: 117,
      width: 150,
      child: Stack(
        children: [],
      ),
    );
  }
}
