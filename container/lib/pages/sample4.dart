import 'package:flutter/material.dart';

class Sample4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample4 decoration'),
      ),
      body: Container(
        child: const Text('Less Boring'),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
        ),
      ),
    );
  }
}
