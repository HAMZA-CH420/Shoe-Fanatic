import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Features/PaymentScreen/Widgets/method_widget.dart';
import 'package:shoe_fantastic/Features/PaymentScreen/card_details.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 20,
          children: [
            Text(
              "Choose Payment Method",
              style: GoogleFonts.publicSans(
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
            MethodWidget(
              bannerName: "Credit / Debit",
              icon: "card.svg",
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CardDetails(),
                    ));
              },
            ),
            MethodWidget(
              bannerName: "Paypal",
              icon: "paypal.svg",
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
