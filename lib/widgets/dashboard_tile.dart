import 'package:flutter/material.dart';

class DashBoardTile extends StatelessWidget {
  final String title;
  final String subtitle;
  final Icon icon;
  final Function onTap;

  DashBoardTile({this.title, this.subtitle, this.icon, this.onTap});
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? null,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            icon,
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                subtitle,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
              ),
            )
          ],
        ),
      ),
    );
  }
}
