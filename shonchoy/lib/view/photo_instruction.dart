import 'package:flutter/material.dart';

class PhotoInstruction extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: <Widget>[
          Flexible(
            child: Container(
              margin: EdgeInsets.all(24),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Now let\'s take photos',
                  style: TextStyle(color: Colors.green, fontSize: 32),
                ),
              ),
            ),
            flex: 1,
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.all(24),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                        'You have to take 2 photos! Front and back of ID Card'),
                  ),
                  Image.asset(
                    'images/idfront.jpg',
                  ),
                  Image.asset(
                    'images/idback.jpg',
                  )
                ],
              ),
            ),
            flex: 6,
          ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.all(24),
              child: RaisedButton(
                elevation: 0,
                color: Colors.green,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                onPressed: () {
                  Navigator.pushNamed(context, '/takephoto');
                },
                child: Container(
                  height: 50,
                  child: Center(
                    child: Text(
                      'Next',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            ),
            flex: 1,
          ),
        ],
      )),
    );
  }
}
