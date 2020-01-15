import 'package:flutter/material.dart';

class DisabledWidgetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Many widges can be disabled'),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            color: Colors.blue,
            child: const Text('Click me!'),
            onPressed: () {},
          ),
          RaisedButton(
            color: Colors.blue,
            child: const Text('Click me!'),
            onPressed: null,
          ),
        ],
      ),
    );
  }
}
