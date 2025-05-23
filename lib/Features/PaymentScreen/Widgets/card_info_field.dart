import 'package:flutter/material.dart';

class CardInfoField extends StatelessWidget {
  const CardInfoField({super.key, required this.hintName});
  final String hintName;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.sizeOf(context).height / 15,
      width: MediaQuery.sizeOf(context).width,
      padding: const EdgeInsets.symmetric(horizontal: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      alignment: Alignment.center,
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hintName,
          hintStyle: TextStyle(
            color: Colors.grey.shade400,
          ),
        ),
      ),
    );
  }
}
