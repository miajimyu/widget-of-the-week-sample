import 'package:flutter/material.dart';

class Sample5Page extends StatefulWidget {
  @override
  _Sample5PageState createState() => _Sample5PageState();
}

class _Sample5PageState extends State<Sample5Page> {
  RangeValues selectedRange = const RangeValues(0.2, 0.8);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample5 min, max, divisions and labels'),
      ),
      body: RangeSlider(
        values: selectedRange,
        onChanged: (newRange) {
          setState(() => selectedRange = newRange);
        },
        min: 0,
        max: 2,
        divisions: 10,
        labels: RangeLabels('${selectedRange.start}', '${selectedRange.end}'),
      ),
    );
  }
}
