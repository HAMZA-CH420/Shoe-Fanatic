import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_fantastic/Features/AddItemToCart/provider/counter_provider.dart';
import 'package:shoe_fantastic/Features/Onboarding%20Screens/splash_screen.dart';

import 'Features/DrawerScreens/NotificationScreen/viewModel/provider/notification_provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(
        create: (context) => NotificationProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => CounterProvider(),
      )
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0X0fffffff)),
        useMaterial3: true,
      ),
      home: SplashScreen(),
    );
  }
}
