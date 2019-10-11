import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample2 padding'),
      ),
      body: Container(
        child: Text('Less Boring'),
        color: Colors.blue,
        padding: EdgeInsets.all(20.0),
      ),
    );
  }
}
