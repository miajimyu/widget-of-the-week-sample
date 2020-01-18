import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  final Container item1 = Container(
    height: 50,
    width: 100,
    color: Colors.blue[100],
  );
  final Container item2 = Container(
    height: 50,
    width: 100,
    color: Colors.blue[200],
  );
  final Container item3 = Container(
    height: 50,
    width: 100,
    color: Colors.blue[300],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1'),
      ),
      body: ListView(
        children: <Widget>[item1, item2, item3],
      ),
    );
  }
}
