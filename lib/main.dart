import 'package:flutter/material.dart';
import 'package:tada_info/screens/dashboard.dart';

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
      routes: {},
    );
  }
}
