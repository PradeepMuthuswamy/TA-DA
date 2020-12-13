import 'package:flutter/material.dart';

class PostingCalculator extends StatefulWidget {
  @override
  _PostingCalculatorState createState() => _PostingCalculatorState();
}

class _PostingCalculatorState extends State<PostingCalculator> {
  TextEditingController _basicPay = TextEditingController();
  TextEditingController _distance = TextEditingController();
  TextEditingController _weight = TextEditingController();

  String basicPayErrorText = '';
  String distanceErrorText = '';
  String weightErrorText = '';

  bool checked = false;

  bool basicPayError = false;
  bool distanceError = false;
  bool weightError = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin:
            EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'Entitlements',
                    style: TextStyle(fontSize: 18),
                  ),
                )
              ],
            ),
            Divider(
              thickness: 2,
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Lieutenant to General',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    '6000 kg',
                    style: TextStyle(fontSize: 16),
                  ),
                  Text(
                    'Rs.50/km',
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            Text(
              'Note: This is for transport by Road only.',
              style: TextStyle(fontSize: 14),
            ),
            Divider(
              thickness: 2,
              height: 3,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _basicPay,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Enter Basic Pay',
                    errorText: basicPayError ? basicPayErrorText : null),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _distance,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                    labelText: 'Enter Distance (km)',
                    errorText: distanceError ? distanceErrorText : null),
              ),
            ),
            CheckboxListTile(
              title: Text('Include Car/Bike'),
              value: checked,
              onChanged: (change) {
                setState(() {
                  checked = change;
                });
              },
            ),
            checked
                ? Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      controller: _weight,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          labelText: 'Enter weight of vehicle (kg)',
                          errorText: weightError ? weightErrorText : null),
                    ),
                  )
                : SizedBox(),
            FlatButton(
              child: Text('Calculate'),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (_) {
                      return AlertDialog(
                        title: Text('Calculated Emoluments'),
                        content: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(_distance.text.toString()),
                            Text(_basicPay.text.toString()),
                          ],
                        ),
                        actions: [
                          TextButton(
                            child: Text('Ok'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    });
              },
            )
          ],
        ),
      ),
    );
  }
}
