import 'package:flutter/material.dart';

class Sample1Page extends StatefulWidget {
  @override
  _Sample1PageState createState() => _Sample1PageState();
}

class _Sample1PageState extends State<Sample1Page> {
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1 Slider'),
      ),
      body: Slider(
        value: rating,
        onChanged: (newRating) {
          setState(() => rating = newRating);
        },
      ),
    );
  }
}
