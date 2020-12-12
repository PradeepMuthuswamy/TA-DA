import 'package:flutter/material.dart';

class Travel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Travel Entitlements'),
      ),
      body: Column(
        children: [
          listCard(
              title: 'Lt to Maj',
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('1. Hotel bill upto Rs.2250 per day'),
                  Text('2. Non-AC taxi upto RS.338 per day within the city.'),
                  Text('3. Food bill upto RS.900 per day.'),
                ],
              )),
          listCard(
              title: 'Lt Col to Brig',
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('1. Hotel bill upto Rs.4500 per day'),
                  Text('2. AC taxi upto 50 km per day within the city.'),
                  Text('3. Food bill upto RS.1000 per day.'),
                ],
              )),
          listCard(
              title: 'Maj Gen & Above',
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('1. Hotel bill upto Rs.7500 per day'),
                  Text(
                      '2. Reimbursement of actual AC taxi charges incurred within the city'),
                  Text('3. Food bill upto RS.1200 per day.'),
                ],
              )),
        ],
      ),
    );
  }

  Widget listCard({String title, Widget subtitle}) {
    return Card(
      child: ListTile(
        title: Text(title),
        subtitle: subtitle,
      ),
    );
  }
}
