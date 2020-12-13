import 'package:flutter/material.dart';
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
      home: Dashboard(),
      routes: {
        'travel': (context) => Travel(),
        'rules': (context) => TravelRules(),
        'ltc': (context) => Ltc(),
      },
    );
  }
}
