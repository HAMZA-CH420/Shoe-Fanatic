import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shoe_fantastic/Features/BottomNavBar/bottom_nav_bar.dart';
import 'package:shoe_fantastic/Features/Onboarding%20Screens/onboarding_screens.dart';
import 'package:shoe_fantastic/Ui%20Helper/Color%20Palate/color_palate.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsFlutterBinding.ensureInitialized();
    Future.delayed(Duration(milliseconds: 500), () {
      isLoggedIn(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Palate.primaryColor,
      ),
    );
  }

  Future<void> isLoggedIn(BuildContext context) async {
    var pref = await SharedPreferences.getInstance();
    bool loggedIn = pref.getBool("isLoggedIn") ?? false;
    if (loggedIn) {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => BottomNavBar(),
          ));
    } else {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => OnboardingScreens(),
          ));
    }
  }
}
