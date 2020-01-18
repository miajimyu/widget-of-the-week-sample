import 'package:flutter/material.dart';

class Sample4Page extends StatefulWidget {
  @override
  _Sample4PageState createState() => _Sample4PageState();
}

class _Sample4PageState extends State<Sample4Page> {
  RangeValues selectedRange = const RangeValues(0.2, 0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample4 RangeSlider'),
      ),
      body: RangeSlider(
        values: selectedRange,
        onChanged: (newRange) {
          setState(() => selectedRange = newRange);
        },
      ),
    );
  }
}
