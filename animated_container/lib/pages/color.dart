import 'package:flutter/material.dart';

class AnimateColorPage extends StatefulWidget {
  @override
  _AnimateColorPageState createState() => _AnimateColorPageState();
}

class _AnimateColorPageState extends State<AnimateColorPage> {
  var _color = Color(0xFF00BB00);
  var _myDuration = Duration(seconds: 1);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Color'),
      ),
      body: Center(
        child: AnimatedContainer(
          color: _color,
          duration: _myDuration,
          child: Container(
            height: 200.0,
            width: 200.0,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_color == Color(0xFF00BB00)) {
              _color = Color(0xFF0000FF);
            } else {
              _color = Color(0xFF00BB00);
            }
          });
        },
        child: Icon(Icons.sync),
      ),
    );
  }
}
