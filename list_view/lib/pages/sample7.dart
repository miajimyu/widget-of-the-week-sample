import 'package:flutter/material.dart';

class Sample7Page extends StatelessWidget {
  final mySliverChildDelegate = SliverChildListDelegate(
    <Widget>[
      const Text('I\'m dedicating every day to you'),
      const Text('Domestic life was never quite my style'),
      const Text('When you smile, you knock me out, I fall apart'),
      const Text('And I thought I was so smart'),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample7 ListView.custom()'),
      ),
      body: ListView.custom(
        childrenDelegate: mySliverChildDelegate,
      ),
    );
  }
}
