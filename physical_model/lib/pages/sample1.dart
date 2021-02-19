import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  static const String id = 'sample1';
  static const String title = 'Sample1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1 PhysicalModel'),
      ),
      body: Center(
        // Point to check
        child: PhysicalModel(
          child: BlueBox(),
          color: Colors.black,
          elevation: 8,
        ),
      ),
    );
  }
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: Colors.blue,
    );
  }
}
