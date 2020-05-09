import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  static const String id = 'sample2';
  static const String title = 'Sample2 EdgeInsets.fromLTRB';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Sample2Page.title),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(0, 50, 100, 150),
        child: BlueBox(),
      ),
    );
  }
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.blue,
      child: Center(
        child: Text(
          'Sample',
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
