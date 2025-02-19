import 'package:flutter/material.dart';
import 'package:shoe_fantastic/Features/SellingScreen/widget/items_info.dart';
import 'package:shoe_fantastic/Features/SellingScreen/widget/store_details.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      child: Column(
        children: [
          StoreDetails(),
          ItemsInfo(),
        ],
      ),
    );
  }
}
