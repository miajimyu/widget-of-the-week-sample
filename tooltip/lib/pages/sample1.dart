import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1'),
      ),
      body: const Center(
        child: Tooltip(
          message: 'Flutter',
          child: FlutterLogo(
            size: 100,
          ),
        ),
      ),
    );
  }
}
