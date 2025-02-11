import 'package:flutter/material.dart';

import 'Features/Onboarding Screens/onboarding_screens.dart';

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
      home: OnboardingScreens(),
    );
  }
}
