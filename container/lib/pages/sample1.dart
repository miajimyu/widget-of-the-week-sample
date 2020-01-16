import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1 color'),
      ),
      body: Container(
        child: const Text('Boring'),
        color: Colors.blue,
      ),
    );
  }
}
