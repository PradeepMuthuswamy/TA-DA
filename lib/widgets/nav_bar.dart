import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  final Color iconColor;
  final String title;
  final Color textColor;
  NavBar(
      {this.iconColor = Colors.white,
      this.title,
      this.textColor = Colors.white});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          IconButton(
              icon: Icon(
                Icons.arrow_back_ios,
                color: iconColor,
              ),
              onPressed: () => Navigator.of(context).pop()),
          Text(
            title ?? '',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w300, color: textColor),
          )
        ],
      ),
    );
  }
}
