import 'package:flutter/material.dart';
import 'package:tada_info/data/tr_rules_data.dart';
import 'package:tada_info/widgets/nav_bar.dart';

class TravelRules extends StatelessWidget {
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
                title: 'TR Rules',
              ),
              Expanded(
                child: ListView.separated(
                    physics: ScrollPhysics(),
                    separatorBuilder: (BuildContext context, int index) =>
                        Divider(
                          color: Colors.white70,
                        ),
                    itemCount: rulesList.length,
                    itemBuilder: (_, index) {
                      return ListTile(
                        contentPadding: EdgeInsets.all(5),
                        title: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            rulesList[index].rule,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
