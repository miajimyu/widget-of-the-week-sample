import 'package:flutter/material.dart';

class Sample7Page extends StatefulWidget {
  @override
  _Sample7PageState createState() => _Sample7PageState();
}

class _Sample7PageState extends State<Sample7Page> {
  var rating = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Sample7 Slider.adaptive()')),
      body: Slider.adaptive(
        value: rating,
        onChanged: (newRating) {
          setState(() => rating = newRating);
        },
      ),
    );
  }
}
