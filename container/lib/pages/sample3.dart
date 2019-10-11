import 'package:flutter/material.dart';

class Sample3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample3 margin'),
      ),
      body: Container(
        child: Text('Less Boring'),
        color: Colors.blue,
        padding: EdgeInsets.all(20.0),
        margin: EdgeInsets.all(20.0),
      ),
    );
  }
}
