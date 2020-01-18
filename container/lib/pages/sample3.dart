import 'package:flutter/material.dart';

class Sample3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample3 margin'),
      ),
      body: Container(
        child: const Text('Less Boring'),
        color: Colors.blue,
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.all(20),
      ),
    );
  }
}
