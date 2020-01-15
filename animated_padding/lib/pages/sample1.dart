import 'package:flutter/material.dart';

class Sample1Page extends StatefulWidget {
  @override
  _Sample1PageState createState() => _Sample1PageState();
}

class _Sample1PageState extends State<Sample1Page> {
  double padValue = 0;

  void _updatePadding(double value) => setState(() => padValue = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1'),
      ),
      body: AnimatedPadding(
        padding: EdgeInsets.all(padValue),
        duration: const Duration(seconds: 1),
        curve: Curves.easeInOut,
        child: Center(
          child: Container(
            color: Colors.blue,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _updatePadding(padValue == 0 ? 25 : 0);
          });
        },
        child: Icon(Icons.autorenew),
      ),
    );
  }
}
