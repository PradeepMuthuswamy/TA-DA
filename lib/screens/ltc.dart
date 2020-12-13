import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:tada_info/widgets/nav_bar.dart';

class Ltc extends StatelessWidget {
  final List<dynamic> ltc = [
    {
      'title': ' Rule 177(A) ',
      'content':
          'Officer and his /her family and dependent  parents can visit hometown (from duty station) every year.\n\n'
              'This concession is available to the dependent parents, even if they are staying at station other than the duty station of the Officer.'
    },
    {
      'title': 'Rule 177(B)',
      'content': 'Officer, Spouse  and  children can visit anywhere in India (from duty station) every alternate year.\n'
          '\nBut during that year Officer and Spouse  and  children have to visit the same destination (hometown or anywhere in India) in a particular year, under this clause.\n'
          '\nIf Spouse  and  children visits the Officer to his duty station in field, by availing LTC under Rule 177B, the Officer loses his entitlement of 177B.\n'
          '\nThe concession is available only to the Officer, spouse and children and not to the dependent parents etc.\n'
          '\nIn case, the Officer and Spouse  and  children avail LTC under Rule 177B TR, they cannot visit hometown in same calendar year under Rule 177(A) TR.'
    },
    {
      'title': 'Rule 177C',
      'content':
          'Married Officer posted to field/operational area can visit their family at SPR/Hometown, where the family is actually residing.\n'
              '\nThis concession is admissible to the Officer only  and  once in a year.'
    },
    {
      'title': 'Rule 177D (Study Leave)',
      'content': '(FOR OFFICER) The Officer can avail LTC from the place of study leave to any place in India/Hometown/SPR, subject to the condition that the reimbursement will be limited to the fare admissible for travel between his HQ station (i.e. the last duty station) to any place in India/Hometown/SPR or actual expenditure whichever is less.\n'
          '\n(FOR FAMILY)'
          ' When the family members are staying with the service Officer at the place of study leave, the reimbursement will be as indicated at (a) above.\n'
          '\nWhen not staying at the place of study leave, LTC may be allowed from place of residence up to hometown/SPR/place of visit and back subject to the condition that the claim will be restricted to direct and shortest route from duty station (i.e. last duty station) to the declared place of visit as the case may be.'
    },
    {
      'title': 'Note',
      'content': 'Under Rule 177C and by using facility of additional warrant, the Officer posted in field/operational areas can visit his SPR twice  in a year, but in that case Officer will lose his entitlement  under Rule177A TR (Home town)\n'
          '\nAn unmarried Officer posted in field also is entitled to visit Hometown using facility of additional warrant.\n'
          '\nThus he can visit his hometown twice (once under Rule 177(A) and then under Rule 177C TR)\n'
          '\nIf the Officer posted in field/concessional area as well as his family decides to go to some another place under Rule 177B, in this case the Officer has to start his journey from his duty station, while the family starts from hometown /SPR.\n'
          '\nReturn journey of the family under LTC should be completed within 6 months from onward journey.'
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
              title: 'LTC',
            ),
            Container(
              height: 450,
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
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              ltc[index]['title'],
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 22,
                                fontWeight: FontWeight.w300,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            ltc[index]['content'],
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 14),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                itemCount: ltc.length,
                pagination: new SwiperPagination(),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
