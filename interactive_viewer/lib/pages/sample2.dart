import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  static const String id = 'sample2';
  static const String title = 'Sample2 constrained false';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Sample2Page.title),
      ),
      body: Center(
        child: InteractiveViewer(
          constrained: false, // Point to check
          child: Image.asset('images/big_picture.png'),
        ),
      ),
    );
  }
}
