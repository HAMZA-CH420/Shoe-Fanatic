import 'package:flutter/material.dart';

class NotificationProvider extends ChangeNotifier {
  final List<Map<String, dynamic>> _dummyData = [
    {
      'notificationTitle': 'New Offer',
      'notificationDesc': 'Get 50% off now!!',
      'isNew': true,
      'date': 'Now',
    },
    {
      'notificationTitle': 'Only for you',
      'notificationDesc': 'Buy one Get one Free!!!',
      'isNew': false,
      'date': '10-02-2025',
    },
    {
      'notificationTitle': 'Black Friday Sale',
      'notificationDesc': 'Get up to 70% off at new products. ',
      'isNew': false,
      'date': '09-02-2025',
    },
  ];
  List<Map<String, dynamic>> getDummyData() {
    return _dummyData;
  }
}
