import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample2'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Container(
            height: 50,
            width: 300,
            child: Placeholder(),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              height: 300,
              width: 200,
              child: Placeholder(),
            ),
          ),
          Container(
            height: 100,
            width: 300,
            child: Placeholder(),
          ),
        ],
      ),
    );
  }
}
