import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sample6Page extends StatefulWidget {
  @override
  _Sample6PageState createState() => _Sample6PageState();
}

class _Sample6PageState extends State<Sample6Page> {
  var rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sample6 CupertinoSlider')),
      body: CupertinoSlider(
        value: rating,
        onChanged: (newRating) {
          setState(() => rating = newRating);
        },
      ),
    );
  }
}
