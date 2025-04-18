import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Ui Helper/Color Palate/color_palate.dart';

class ChatRoom extends StatelessWidget {
  const ChatRoom({super.key, required this.chatName, required this.status});
  final String chatName, status;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(name: chatName, lastSeen: status),
      body: Column(
        children: [],
      ),
    );
  }

  //Custom Appbar
  PreferredSizeWidget appBar({
    required String name,
    required String lastSeen,
  }) {
    return AppBar(
      title: Row(
        spacing: 10,
        children: [
          CircleAvatar(
            radius: 25,
            backgroundColor: Palate.primaryColor,
            child: Icon(
              Icons.person,
              color: Colors.white,
            ),
          ),
          Column(
            spacing: 5,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: GoogleFonts.publicSans(
                  fontWeight: FontWeight.w600,
                  fontSize: 17,
                ),
              ),
              Text(
                lastSeen,
                style: GoogleFonts.publicSans(
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ],
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(
              CupertinoIcons.ellipsis_vertical,
              color: Colors.black,
            ))
      ],
    );
  }
}
