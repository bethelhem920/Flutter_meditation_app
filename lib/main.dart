import 'package:flutter/material.dart';
import 'package:workout_application/Screens/About.dart';
import 'package:workout_application/Screens/Catagories.dart';
import 'package:workout_application/Screens/Help.dart';
import 'package:workout_application/Screens/settings.dart';
import 'package:workout_application/Screens/onboard.dart';
import 'package:workout_application/Models/navigationbar.dart';

void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      title: "MEDITO",
      theme: ThemeData(
          // textTheme: TextTheme(),
          // fontFamily: "ab",
          scaffoldBackgroundColor: Colors.white,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      // ignore: prefer_const_constructors
      // home: Catagories(),
      initialRoute: "Onboarding",
      routes: {
        "Onboarding": (context) => OnboardingScreen(),
        "home": (context) => const NavigationBa(),
        "settings": (context) => const setting(),
        "about": (context) => const About(),
        "catagories": (context) => const Catagories(),
        "help": (context) => const Help()
      },
    );
  }
}
