import 'package:flutter/material.dart';

class Sample7Page extends StatefulWidget {
  static const String id = 'sample7';
  static const String title = 'Sample7 Set strokeWidth';

  @override
  _Sample7PageState createState() => _Sample7PageState();
}

class _Sample7PageState extends State<Sample7Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Sample7Page.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: const <Widget>[
            Spacer(),
            CircularProgressIndicator(),
            SizedBox(height: 10),
            Text('Default (strokeWidth = 4.0)'),
            Spacer(),
            CircularProgressIndicator(strokeWidth: 2),
            SizedBox(height: 10),
            Text('strokeWidth: 2'),
            Spacer(),
            CircularProgressIndicator(strokeWidth: 10),
            SizedBox(height: 20),
            Text('strokeWidth: 10'),
            Spacer(),
          ],
        ),
      ),
    );
  }
}
