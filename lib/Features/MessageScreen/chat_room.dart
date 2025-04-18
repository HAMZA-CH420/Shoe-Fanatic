import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Ui Helper/Color Palate/color_palate.dart';

class ChatRoom extends StatefulWidget {
  const ChatRoom({super.key, required this.chatName, required this.status});
  final String chatName, status;

  @override
  State<ChatRoom> createState() => _ChatRoomState();
}

class _ChatRoomState extends State<ChatRoom> {
  final List<Map<String, dynamic>> messages = [
    {
      "sendBy": "you",
      "msg": "Dinner Tonight?",
      "sentTime": "05:34",
    },
    {
      "sendBy": "other",
      "msg": "Sounds Great!!",
      "sentTime": "05:35",
    },
    {
      "sendBy": "other",
      "msg": "Where are you planing??",
      "sentTime": "05:35",
    },
    {
      "sendBy": "you",
      "msg": "This place my friend told me it's near the corner.",
      "sentTime": "05:36"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar(name: widget.chatName, lastSeen: widget.status),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return messageBubble(
                  messages[index]["sendBy"],
                  messages[index]["msg"],
                  messages[index]["sentTime"],
                );
              },
            ),
          ],
        ),
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
                  fontSize: 16,
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

  //Chat Ui
  Widget messageBubble(String sendBy, String msg, String sentTime) {
    return Container(
      alignment: sendBy == "you" ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        decoration: BoxDecoration(
          color: sendBy == "you" ? Palate.primaryColor : Colors.white,
          borderRadius: BorderRadius.only(
            bottomRight:
                sendBy == "you" ? Radius.circular(0) : Radius.circular(12),
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
            bottomLeft:
                sendBy == "you" ? Radius.circular(12) : Radius.circular(0),
          ),
        ),
        margin: EdgeInsets.only(
          left: 10,
          right: 10,
          top: 5,
          bottom: 5,
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              msg,
              style: GoogleFonts.publicSans(
                fontWeight: FontWeight.w500,
                color: sendBy == "you" ? Colors.white : Colors.black,
              ),
            ),
            Text(
              sentTime,
              style: GoogleFonts.publicSans(
                fontSize: 11,
                fontWeight: FontWeight.w400,
                color: sendBy == "you" ? Colors.white : Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }

  //Message input widget

  Widget messageInput() {
    return Container(
      height: MediaQuery.sizeOf(context).height / 12,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          TextField(
            decoration: InputDecoration(hintText: "Type Here"),
          ),
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.send,
                color: Palate.primaryColor,
              )),
        ],
      ),
    );
  }
}
