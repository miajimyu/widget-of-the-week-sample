import 'package:flutter/material.dart';

class Sample5Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample5 decoration'),
      ),
      body: Container(
        child: const Text('Less Boring'),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
        ),
        margin: const EdgeInsets.all(25),
        padding: const EdgeInsets.all(40),
      ),
    );
  }
}
