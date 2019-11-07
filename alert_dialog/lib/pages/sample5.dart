import 'package:flutter/material.dart';

class Sample5Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample5 elevation, color, shape'),
      ),
      body: AlertDialog(
        title: Text('Accept?'),
        content: Text('Do you accept?'),
        actions: <Widget>[
          FlatButton(child: Text("No"), onPressed: () {}),
          FlatButton(child: Text("Yes"), onPressed: () {}),
        ],
        elevation: 24.0,
        backgroundColor: Colors.amber,
        shape: StadiumBorder(),
      ),
    );
  }
}
