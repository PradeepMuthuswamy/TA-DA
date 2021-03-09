import 'package:flutter/material.dart';
import 'package:flutter_share/flutter_share.dart';
import 'package:tada_info/widgets/dashboard_tile.dart';
import 'package:tada_info/widgets/posting_calculator.dart';

class Dashboard extends StatelessWidget {

  Future<void> share() async {
    await FlutterShare.share(
        title: 'Handbook app',
        text: 'Hey! Checkout this awesome app! Cheers',
        linkUrl: 'https://play.google.com/store/apps/details?id=com.onepercentrule.tada',
        chooserTitle: 'Share Handbook App with friends');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      floatingActionButton: FloatingActionButton.extended(onPressed: share, label: Text('Share'),
      icon: Icon(Icons.share,
        color: Colors.white,
      ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [

              TextButton.icon(
                label: Text(
                  'Feedback',
                  style: TextStyle(fontWeight: FontWeight.w300,
                      color: Colors.black
                  ),
                ),
                icon: Icon(
                  Icons.comment,
                  color: Colors.redAccent,
                ),
                onPressed: () =>Navigator.of(context).pushNamed('feedback'),
              ),
              TextButton.icon(
                label: Text(
                  'Generate Claim',
                  style: TextStyle(fontWeight: FontWeight.w300,
                  color: Colors.black
                  ),
                ),
                icon: Icon(
                  Icons.note_add,
                  color: Colors.purple,
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
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
                    onTap: () {
                      Navigator.of(context).pushNamed('ltc');
                    },
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
