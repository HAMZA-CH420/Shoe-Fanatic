import 'package:flutter/material.dart';
import 'package:shoe_fantastic/Ui%20Helper/widgets/filter_button_widget.dart';

Future<void> filterWidget(BuildContext context) async {
  final size = MediaQuery.sizeOf(context);
  return showModalBottomSheet(
    context: context,
    builder: (context) {
      return Container(
        height: size.height,
        width: size.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          children: [
            FilterButtonWidget(),
          ],
        ),
      );
    },
  );
}
