import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shoe_fantastic/Features/PaymentScreen/Widgets/card_info_field.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

import 'Widgets/card_info_input_field.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Payment Method"),
        centerTitle: true,
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 20,
            )),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                spacing: 20,
                children: [
                  SvgPicture.asset("assets/images/credit.svg"),
                  const SizedBox(
                    height: 20,
                  ),
                  CardInfoField(hintName: "Name"),
                  CardInfoField(hintName: "Enter card number here"),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CardInfoInputField(hintName: "Expiry Date"),
                      CardInfoInputField(hintName: "CVV"),
                    ],
                  ),
                ],
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(
                        MediaQuery.sizeOf(context).width,
                        MediaQuery.sizeOf(context).height / 18,
                      ),
                      backgroundColor: Palate.primaryColor),
                  onPressed: () {},
                  child: Text(
                    "Pay",
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
