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
            (_basicPay.value.text.isNotEmpty && _distance.value.text.isNotEmpty)
                ? FlatButton(
                    child: Text('Calculate'),
                    onPressed: () {
                      int ctg =
                          (int.tryParse(_basicPay.value.text) * 0.8).toInt();
                      int tpt =
                          (int.tryParse(_distance.value.text) * 50).toInt();
                      showDialog(
                          context: context,
                          builder: (_) {
                            return AlertDialog(
                              title: Text('Calculated Emoluments'),
                              content: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Row(
                                    children: [
                                      Text('Contingency Grant:'),
                                      Text('\u20B9 ' + ctg.toString()),
                                    ],
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Personal Effects:'),
                                      Text('\u20B9 ' + tpt.toString()),
                                    ],
                                  ),
                                  (checked && _weight.value.text.isNotEmpty)
                                      ? Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text('Vehicle:'),
                                            Text('\u20B9 ' + _weight.text),
                                          ],
                                        )
                                      : SizedBox(),
                                  Divider(),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text('Total:'),
                                      Text('\u20B9 ' + (tpt + ctg).toString())
                                    ],
                                  ),
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
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
