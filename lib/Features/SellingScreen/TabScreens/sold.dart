import 'package:flutter/material.dart';
import 'package:shoe_fantastic/Features/SellingScreen/widget/myshoes_widget.dart';
import 'package:shoe_fantastic/Features/SellingScreen/widget/total_items.dart';

class Sold extends StatelessWidget {
  const Sold({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 15,
      ),
      child: Column(
        spacing: 10,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TotalItems(
            title: "Recently Sold",
            isSoldScreen: true,
          ),
          Expanded(
              child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return MyShoesWidget();
            },
          ))
        ],
      ),
    );
  }
}
