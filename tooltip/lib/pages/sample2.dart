import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample2 (verticalOffset & height)'),
      ),
      body: Center(
        child: Tooltip(
          message: 'Flutter',
          verticalOffset: 48,
          height: 24,
          child: FlutterLogo(
            size: 100.0,
          ),
        ),
      ),
    );
  }
}
