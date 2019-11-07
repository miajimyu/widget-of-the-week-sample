import 'package:flutter/material.dart';

class Sample4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample4 AlertDialog'),
      ),
      body: AlertDialog(
        title: Text('Accept?'),
        content: Text('Do you accept?'),
        actions: <Widget>[
          FlatButton(child: Text("No"), onPressed: () {}),
          FlatButton(child: Text("Yes"), onPressed: () {}),
        ],
      ),
    );
  }
}
