import 'package:flutter/material.dart';
import 'package:tada_info/widgets/nav_bar.dart';

class FeedbackPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.indigo],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
          child: Column(
            children: [
              NavBar(
                title: 'Feedback',
              ),
            ],
          ))),
    );
  }
}
