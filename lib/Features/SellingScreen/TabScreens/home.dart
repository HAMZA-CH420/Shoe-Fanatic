import 'package:flutter/material.dart';
import 'package:shoe_fantastic/Features/SellingScreen/widget/custom_button_selling.dart';
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
      child: SingleChildScrollView(
        child: Column(
          children: [
            StoreDetails(),
            ItemsInfo(),
            CustomButtonSelling(
              onTap: () {},
              btnName: "Notification",
              icon: Icons.notifications,
            ),
            CustomButtonSelling(
              onTap: () {},
              btnName: "Help & Support",
              icon: Icons.help,
            ),
          ],
        ),
      ),
    );
  }
}
