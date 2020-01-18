import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1'),
      ),
      body: ListView(
        children: const <Widget>[
          Placeholder(
            fallbackHeight: 50,
          ),
          Placeholder(
            color: Colors.red,
          ),
          Placeholder(
            strokeWidth: 10,
          ),
        ],
      ),
    );
  }
}
