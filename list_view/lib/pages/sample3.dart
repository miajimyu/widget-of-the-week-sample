import 'package:flutter/material.dart';

class Sample3Page extends StatelessWidget {
  final item1 = Container(
    height: 50,
    width: 100,
    color: Colors.blue[100],
  );
  final item2 = Container(
    height: 50,
    width: 100,
    color: Colors.blue[200],
  );
  final item3 = Container(
    height: 50,
    width: 100,
    color: Colors.blue[300],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample3 reverse: ture'),
      ),
      body: ListView(
        children: <Widget>[item1, item2, item3],
        reverse: true,
      ),
    );
  }
}
