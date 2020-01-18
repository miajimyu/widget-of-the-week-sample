import 'package:flutter/material.dart';

class Sample3Page extends StatefulWidget {
  @override
  _Sample3PageState createState() => _Sample3PageState();
}

class _Sample3PageState extends State<Sample3Page> {
  double rating = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample3 divisions & label'),
      ),
      body: Slider(
        value: rating,
        onChanged: (newRating) {
          setState(() => rating = newRating);
        },
        divisions: 4,
        label: '$rating',
      ),
    );
  }
}
