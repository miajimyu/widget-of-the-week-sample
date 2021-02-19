import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  static const String id = 'sample2';
  static const String title = 'Sample2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample2 shadowColor & borderRadius'),
      ),
      body: Center(
        // Point to check
        child: PhysicalModel(
          child: BlueBox(),
          color: Colors.black,
          shadowColor: Colors.pink,
          elevation: 8,
          borderRadius: BorderRadius.circular(45),
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
