import 'package:flutter/material.dart';

class ClassSample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClassSample1'),
      ),
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10.0),
          color: Colors.amber[600],
          width: 48.0,
          height: 48.0,
        ),
      ),
    );
  }
}
