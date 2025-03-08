import 'package:flutter/material.dart';
import 'package:shoe_fantastic/Features/SellingScreen/widget/myshoes_widget.dart';

class Current extends StatelessWidget {
  const Current({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ListView.builder(
        itemCount: 3,
        itemBuilder: (context, index) {
          return MyShoesWidget(
            isSoldScreen: true,
            color: "Blue",
            status: "Pending",
            dateSold: "10-Feb-2025",
            model: "Air Force Shoe Sneakers",
            price: "\$150",
            shoeSize: "7",
          );
        },
      ),
    );
  }
}
