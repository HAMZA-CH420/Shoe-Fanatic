import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class NotificationServices {
  //Ask for permission
  void notificationPermission() async {
    var status = await Permission.notification.status;
    if (status.isDenied) {
      await Permission.notification.request();
    } else if (status.isGranted) {
      debugPrint("granted");
    } else if (status.isPermanentlyDenied) {
      openAppSettings();
    }
  }
}
