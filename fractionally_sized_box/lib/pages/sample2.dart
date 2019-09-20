import 'package:flutter/material.dart';

class Sample2Page extends StatefulWidget {
  @override
  _Sample2PageState createState() => _Sample2PageState();
}

class _Sample2PageState extends State<Sample2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample2'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Win a Dash',
              style: TextStyle(
                color: Colors.lightBlue,
                fontSize: 30,
              ),
            ),
            Flexible(
              child: FractionallySizedBox(
                heightFactor: 0.1,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                color: Colors.lightBlue,
              ),
              width: 200,
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}