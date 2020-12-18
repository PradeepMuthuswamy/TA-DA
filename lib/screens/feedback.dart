import 'package:flutter/material.dart';
import 'package:tada_info/widgets/nav_bar.dart';

import 'package:url_launcher/url_launcher.dart';

class FeedbackPage extends StatefulWidget {
  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  var _subject = TextEditingController();

  var _body = TextEditingController();

  void launchEmail({String subject, String body}) async {
    Uri _emailLaunchUri = Uri(
        scheme: 'mailto',
        path: 'onepercentrulevideos@gmail.com',
        queryParameters: {
          'subject': subject,
          'body':body
        }
    );

    var url = _emailLaunchUri.toString();
    if (await canLaunch(url)) {
    await launch(url);
    } else {
    throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.blue[300], Colors.purple[300]],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight)),
              child: Column(
                children: [
                  NavBar(
                    title: 'Feedback',
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      style: TextStyle(color: Colors.white),
                      cursorColor: Colors.white,
                      controller: _subject,
                      decoration: InputDecoration(
                        labelText: 'Enter Subject',
                        labelStyle: TextStyle(color: Colors.white),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      cursorColor: Colors.white,
                      controller: _body,
                      style: TextStyle(color: Colors.white),
                      keyboardType: TextInputType.multiline,
                      //Normal textInputField will be displayed
                      maxLines: 5,
                      decoration: InputDecoration(
                        labelText: 'Feedback',
                        labelStyle: TextStyle(color: Colors.white),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                    ),
                  ),
                  RaisedButton(
                    color: Colors.white,
                    shape: StadiumBorder(),
                    child: Text(
                      'Send',
                      style: TextStyle(
                          color: Colors.blue, fontWeight: FontWeight.w300),
                    ),
                    onPressed: (){
                      if(_subject.value.text.isNotEmpty && _body.value.text.isNotEmpty)
                      launchEmail(
                        subject: _subject.value.text,
                        body: _body.value.text
                      );
                    },
                  )
                ],
              ))),
    );
  }
}
