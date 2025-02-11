import 'package:flutter/material.dart';
import 'package:shoe_fantastic/Features/BottomNavBar/bottom_nav_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widgets is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0X0fffffff)),
        useMaterial3: true,
      ),
      home: BottomNavBar(),
    );
  }
}
