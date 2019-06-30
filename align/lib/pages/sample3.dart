import 'package:flutter/material.dart';

class Sample3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample3'),
      ),
      body: Stack(
        children: <Widget>[
          Align(
            child: Container(
              width: 200,
              height: 200,
              color: Colors.blue,
            ),
          ),
          Align(
            alignment: Alignment(0.0, 0.0),
            child: Text(
              'Hello!',
              style: Theme.of(context).textTheme.display1,
            ),
          ),
        ],
      ),
    );
  }
}
