import 'package:flutter/material.dart';
import 'package:tada_info/widgets/dashboard_tile.dart';
import 'package:tada_info/widgets/posting_calculator.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
            icon: Icon(
              Icons.share,
              color: Colors.indigo,
            ),
            label: 'Share App'),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.comment,
            color: Colors.redAccent,
          ),
          label: 'Feedback',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.error_outline,
            color: Colors.orangeAccent,
          ),
          label: 'Disclaimer',
        ),
      ]),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.blue, Colors.indigo])),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Handbook',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w300),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                physics: ScrollPhysics(),
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  DashBoardTile(
                    onTap: () {
                      showModalBottomSheet(
                          isScrollControlled: true,
                          context: context,
                          builder: (context) {
                            return PostingCalculator();
                          });
                    },
                    icon: Icon(
                      Icons.transfer_within_a_station,
                      size: 40,
                      color: Colors.green,
                    ),
                    title: 'Posting',
                    subtitle: 'Emoluments on posting',
                  ),
                  DashBoardTile(
                    icon: Icon(
                      Icons.flight_takeoff,
                      size: 40,
                      color: Colors.pink,
                    ),
                    title: 'LTC',
                    subtitle: 'Rules in brief',
                  ),
                  DashBoardTile(
                    icon: Icon(
                      Icons.rule,
                      size: 40,
                      color: Colors.purpleAccent,
                    ),
                    title: 'TR Rules',
                    subtitle: 'Frequently used rules',
                    onTap: () {
                      Navigator.of(context).pushNamed('rules');
                    },
                  ),
                  DashBoardTile(
                    icon: Icon(
                      Icons.train,
                      size: 40,
                      color: Colors.cyan,
                    ),
                    title: 'Travel',
                    subtitle: 'Emoluments on temporary duty',
                    onTap: () {
                      Navigator.of(context).pushNamed('travel');
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
