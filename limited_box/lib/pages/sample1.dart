import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container (Without LimitedBox)'),
      ),
      body: Center(
        child: Container(
          height: 300,
          width: 300,
          color: Colors.green,
        ),
      ),
    );
  }
}
