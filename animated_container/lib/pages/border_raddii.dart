import 'package:flutter/material.dart';

class AnimateBorderRadiiPage extends StatefulWidget {
  @override
  _AnimateBorderRadiiPageState createState() => _AnimateBorderRadiiPageState();
}

class _AnimateBorderRadiiPageState extends State<AnimateBorderRadiiPage> {
  double _borderRadii = 0;
  final Duration _myDuration = const Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Border Radii'),
      ),
      body: Center(
        child: AnimatedContainer(
          decoration: BoxDecoration(
            border: Border.all(
              width: 1,
              color: Colors.black,
            ),
            borderRadius: BorderRadius.all(Radius.circular(_borderRadii)),
            color: const Color(0xFF00BB00),
          ),
          duration: _myDuration,
          height: 200,
          width: 200,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _borderRadii = _borderRadii == 0.0 ? 20.0 : 0.0;
          });
        },
        child: Icon(Icons.sync),
      ),
    );
  }
}
