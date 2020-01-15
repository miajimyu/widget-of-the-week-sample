import 'package:flutter/material.dart';

class AnimateHeightPage extends StatefulWidget {
  @override
  _AnimateHeightPageState createState() => _AnimateHeightPageState();
}

class _AnimateHeightPageState extends State<AnimateHeightPage> {
  double _height = 100.0;
  final Duration _myDuration = const Duration(milliseconds: 200);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Height'),
      ),
      body: Center(
        child: AnimatedContainer(
          color: Colors.amber,
          height: _height,
          duration: _myDuration,
          child: Container(
            child: Center(
              child: Text(
                'height = ${_height.round()}',
                style: const TextStyle(fontSize: 30),
              ),
            ),
            width: 300.0,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _height = _height == 100.0 ? 150 : 100;
          });
        },
        child: Icon(Icons.sync),
      ),
    );
  }
}
