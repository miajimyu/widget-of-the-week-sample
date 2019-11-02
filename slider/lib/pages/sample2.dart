import 'package:flutter/material.dart';

class Sample2Page extends StatefulWidget {
  @override
  _Sample2PageState createState() => _Sample2PageState();
}

class _Sample2PageState extends State<Sample2Page> {
  var rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sample2 min max')),
      body: Slider(
        value: rating,
        onChanged: (newRating) {
          setState(() => rating = newRating);
        },
        min: 0,
        max: 100,
      ),
    );
  }
}
