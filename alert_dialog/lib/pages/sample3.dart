import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sample3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample3 actions'),
      ),
      body: CupertinoAlertDialog(
        title: Text('Accept?'),
        content: Text('Do you accept?'),
        actions: <Widget>[
          CupertinoDialogAction(child: Text("No"), onPressed: () {}),
          CupertinoDialogAction(child: Text("Yes"), onPressed: () {}),
        ],
      ),
    );
  }
}
