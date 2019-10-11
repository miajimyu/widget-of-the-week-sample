import 'package:flutter/material.dart';

class Sample5Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample5 decoration'),
      ),
      body: Container(
        child: Text('Less Boring'),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.blue,
        ),
        margin: EdgeInsets.all(25.0),
        padding: EdgeInsets.all(40.0),
      ),
    );
  }
}
