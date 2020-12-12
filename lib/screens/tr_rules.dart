import 'package:flutter/material.dart';
import 'package:tada_info/data/tr_rules_data.dart';

class TravelRules extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('TR Rules'),
      ),
      body: ListView.separated(
          separatorBuilder: (BuildContext context, int index) => Divider(),
          itemCount: rulesList.length,
          itemBuilder: (_, index) {
            return ListTile(
              contentPadding: EdgeInsets.all(5),
              title: Text(rulesList[index].rule),
            );
          }),
    );
  }
}
