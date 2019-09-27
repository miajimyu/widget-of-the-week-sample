import 'package:flutter/material.dart';

class Sample4Page extends StatelessWidget {
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
        title: Text('Sample4 physics (NeverScroll)'),
      ),
      body: ListView(
        children: <Widget>[item1, item2, item3],
        physics: NeverScrollableScrollPhysics(),
      ),
    );
  }
}
