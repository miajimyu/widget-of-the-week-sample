import 'package:flutter/material.dart';

class Sample1Page extends StatefulWidget {
  @override
  _Sample1PageState createState() => _Sample1PageState();
}

class _Sample1PageState extends State<Sample1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample1'),
      ),
      body: Container(
        alignment: Alignment.center,
        child: FractionallySizedBox(
          widthFactor: 0.7,
          child: FlatButton(
            color: Colors.lightBlue,
            child: Text(
              'PRESS HERE',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            onPressed: () {},
          ),
        ),
      ),
    );
  }
}
