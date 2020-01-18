import 'package:flutter/material.dart';

class AnimateBorderPage extends StatefulWidget {
  @override
  _AnimateBorderPageState createState() => _AnimateBorderPageState();
}

class _AnimateBorderPageState extends State<AnimateBorderPage> {
  double _border = 1;
  final Duration _myDuration = const Duration(milliseconds: 500);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Border'),
      ),
      body: Center(
        child: AnimatedContainer(
          decoration: BoxDecoration(
            border: Border.all(
              width: _border,
              color: Colors.black,
            ),
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
            _border = _border == 1.0 ? 5.0 : 1.0;
          });
        },
        child: Icon(Icons.sync),
      ),
    );
  }
}
