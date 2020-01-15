import 'package:flutter/material.dart';

class Sample2Page extends StatefulWidget {
  @override
  _Sample2PageState createState() => _Sample2PageState();
}

class _Sample2PageState extends State<Sample2Page> {
  double padValueX = 0;
  double padValueY = 250;

  void _updatePaddingX(double value) => setState(() => padValueX = value);
  void _updatePaddingY(double value) => setState(() => padValueY = value);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample2'),
      ),
      body: AnimatedPadding(
        padding:
            EdgeInsets.symmetric(horizontal: padValueX, vertical: padValueY),
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
            _updatePaddingX(padValueX == 0 ? 150 : 0);
            _updatePaddingY(padValueY == 0 ? 250 : 0);
          });
        },
        child: Icon(Icons.autorenew),
      ),
    );
  }
}
