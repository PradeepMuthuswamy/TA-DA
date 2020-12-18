import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:tada_info/screens/dashboard.dart';
import 'package:tada_info/screens/ltc.dart';
import 'package:tada_info/screens/tr_rules.dart';
import 'package:tada_info/screens/travel.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TA-DA Info',
      home: Splash(),
      routes: {
        'travel': (context) => Travel(),
        'rules': (context) => TravelRules(),
        'ltc': (context) => Ltc(),
      },
    );
  }
}

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: Dashboard(),
      title: new Text(
        'The Handbook',
        style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0,color: Colors.white),
      ),
      gradientBackground: LinearGradient(
        colors: [
          Colors.blue,
          Colors.indigo
        ],
            begin: Alignment.topLeft,
        end: Alignment.bottomRight
      ),
      image: new Image.asset(
          'assets/images/travel-guide.png',
      fit: BoxFit.cover,
        width: 100,
      ),

      loaderColor: Colors.white,
    );
  }
}

