import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample2 padding'),
      ),
      body: Container(
        child: const Text('Less Boring'),
        color: Colors.blue,
        padding: const EdgeInsets.all(20.0),
      ),
    );
  }
}
