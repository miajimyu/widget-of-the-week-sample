import 'package:flutter/material.dart';

class Sample1Page extends StatefulWidget {
  @override
  _Sample1PageState createState() => _Sample1PageState();
}

class _Sample1PageState extends State<Sample1Page> {
  double _currentOpacity = 0;
  @override
  Widget build(BuildContext context) {
    final Widget myWidget = Center(
      child: Text(
        'Mischief\nmanaged!',
        textAlign: TextAlign.center,
        style: TextStyle(
          color: Colors.lightBlue,
          fontSize: 50,
        ),
      ),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text('Sample1 (Opacity=$_currentOpacity)'),
      ),
      body: AnimatedOpacity(
        child: myWidget,
        opacity: _currentOpacity,
        duration: const Duration(seconds: 1),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() => _currentOpacity = _currentOpacity == 1.0 ? 0.0 : 1.0);
        },
        child: Icon(Icons.autorenew),
      ),
    );
  }
}
