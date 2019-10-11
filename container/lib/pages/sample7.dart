import 'package:flutter/material.dart';

class Sample7Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample7 alignment & w & h'),
      ),
      body: Container(
        child: Text('Less Boring'),
        color: Colors.blue,
        alignment: Alignment.center,
        width: 200,
        height: 100,
      ),
    );
  }
}
