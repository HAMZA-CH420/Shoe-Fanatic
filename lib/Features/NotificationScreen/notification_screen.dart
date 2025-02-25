import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:shoe_fantastic/Features/NotificationScreen/viewModel/provider/notification_provider.dart';
import 'package:shoe_fantastic/Features/NotificationScreen/widgets/notification_widget.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> notifications =
        Provider.of<NotificationProvider>(context).getDummyData();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios_new,
              size: 20,
            )),
        title: Text(
          "Notifications",
          style: GoogleFonts.publicSans(
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: notifications.length,
                itemBuilder: (context, index) {
                  return NotificationWidget(
                    isNew: notifications[index]['isNew'],
                    title: notifications[index]["notificationTitle"],
                    description: notifications[index]["notificationDesc"],
                    date: notifications[index]["date"],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
