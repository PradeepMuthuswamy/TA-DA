import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:tada_info/widgets/nav_bar.dart';

class Travel extends StatelessWidget {
  final List<dynamic> cards = [
    {
      'title': 'Lt to Maj',
      'row1': 'Hotel bill upto Rs.2250 per day',
      'row2': 'Non-AC taxi upto RS.338 per day within the city.',
      'row3': 'Food bill upto RS.900 per day.'
    },
    {
      'title': 'Lt Col to Brig',
      'row1': ' Hotel bill upto Rs.4500 per day',
      'row2': 'AC taxi upto 50 km per day within the city.',
      'row3': 'Food bill upto RS.1000 per day.',
    },
    {
      'title': 'Maj Gen & Above',
      'row1': 'Hotel bill upto Rs.7500 per day',
      'row2':
          'Reimbursement of actual AC taxi charges incurred within the city',
      'row3': 'Food bill upto RS.1200 per day.',
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.blue, Colors.indigo],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Column(
          children: [
            NavBar(
              title: 'Travel',
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              height: 350,
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    margin: EdgeInsets.all(20),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Text(
                              cards[index]['title'],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            cards[index]['row1'],
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            cards[index]['row2'],
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w300),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(15),
                          child: Text(
                            cards[index]['row3'],
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w300),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: cards.length,
                pagination: new SwiperPagination(),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
/*
*  Column(
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
*
* */
