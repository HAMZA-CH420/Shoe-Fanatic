import 'package:flutter/material.dart';

class CardInfoField extends StatelessWidget {
  const CardInfoField({super.key, required this.hintName});
  final String hintName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintName,
          hintStyle: TextStyle(
            color: Colors.grey.shade300,
          ),
        ),
      ),
    );
  }
}

class CardInfoInputField extends StatelessWidget {
  const CardInfoInputField({super.key, required this.hintName});
  final String hintName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.sizeOf(context).width / 1.8,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: hintName,
          hintStyle: TextStyle(
            color: Colors.grey.shade300,
          ),
        ),
      ),
    );
  }
}
