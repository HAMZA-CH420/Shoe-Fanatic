import 'package:flutter/material.dart';
import 'package:shoe_fantastic/Features/SellingScreen/widget/store_logo.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
        children: [
          Row(
            children: [
              StoreLogo(),
            ],
          ),
        ],
      ),
    );
  }
}
