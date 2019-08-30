import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample2 BoxConstraints.expand()'),
      ),
      body: ConstrainedBox(
        constraints: const BoxConstraints.expand(),
        child: const Card(child: Text('Hello World!')),
      ),
    );
  }
}
