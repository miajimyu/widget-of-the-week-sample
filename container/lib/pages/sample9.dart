import 'package:flutter/material.dart';

class Sample9Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample9 transform'),
      ),
      body: Container(
        child: const Text('Less Boring'),
        color: Colors.blue,
        alignment: Alignment.center,
        width: 200.0,
        height: 200.0,
        transform: Matrix4.rotationZ(0.05),
      ),
    );
  }
}
