import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shoe_fantastic/Features/MessageScreen/chat_room.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';
import 'package:shoe_fantastic/Ui%20Helper/widgets/DrawerWidget/drawer_widget.dart';

class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  final List<Map<String, dynamic>> users = [
    {
      "name": "Bessie Cooper",
      "isOnline": true,
      "lastSeen": "04:35 am",
      "recentMsg": "Hi"
    },
    {
      "name": "Annette Black",
      "isOnline": false,
      "lastSeen": "04:35 am",
      "recentMsg": "Okay"
    },
    {
      "name": "Darlene Robertson",
      "isOnline": false,
      "lastSeen": "04:35 am",
      "recentMsg": "how you doing?"
    },
    {
      "name": "Ronald Richard",
      "isOnline": false,
      "lastSeen": "04:35 am",
      "recentMsg": "This is amazing"
    },
    {
      "name": "Courteny henry",
      "isOnline": true,
      "lastSeen": "04:35 am",
      "recentMsg": "I don't know"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerWidget(),
      appBar: AppBar(
        title: Text(
          "Messages",
          style: GoogleFonts.publicSans(
            fontWeight: FontWeight.w600,
            fontSize: 17,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: ListView.builder(
          itemCount: users.length,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ChatRoom(
                          chatName: users[index]["name"],
                          status: users[index]["lastSeen"]),
                    ));
              },
              leading: CircleAvatar(
                radius: 30,
                backgroundColor: Palate.primaryColor,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              title: Text(
                users[index]["name"],
                style: GoogleFonts.publicSans(
                    fontWeight: FontWeight.w500, fontSize: 16),
              ),
              subtitle: Text(
                users[index]["recentMsg"],
                style: GoogleFonts.publicSans(
                    fontWeight: FontWeight.w400, fontSize: 13),
              ),
              trailing: Text(
                users[index]["lastSeen"],
                style: GoogleFonts.publicSans(
                    fontWeight: FontWeight.w400, fontSize: 13),
              ),
            );
          },
        ),
      ),
    );
  }
}
