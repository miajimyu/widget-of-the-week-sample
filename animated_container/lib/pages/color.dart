import 'package:flutter/material.dart';

class AnimateColorPage extends StatefulWidget {
  @override
  _AnimateColorPageState createState() => _AnimateColorPageState();
}

class _AnimateColorPageState extends State<AnimateColorPage> {
  Color _color = const Color(0xFF00BB00);
  final Duration _myDuration = const Duration(seconds: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Color'),
      ),
      body: Center(
        child: AnimatedContainer(
          color: _color,
          duration: _myDuration,
          child: Container(
            height: 200,
            width: 200,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_color == const Color(0xFF00BB00)) {
              _color = const Color(0xFF0000FF);
            } else {
              _color = const Color(0xFF00BB00);
            }
          });
        },
        child: Icon(Icons.sync),
      ),
    );
  }
}
