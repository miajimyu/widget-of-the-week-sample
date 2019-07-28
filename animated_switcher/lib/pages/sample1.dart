import 'package:flutter/material.dart';

class Sample1Page extends StatefulWidget {
  @override
  _Sample1PageState createState() => _Sample1PageState();
}

class _Sample1PageState extends State<Sample1Page> {
  var _myAnimatedWidget;
  var _isAnimated = false;

  @override
  void initState() {
    _myAnimatedWidget = _blueContainer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample1'),
      ),
      body: Center(
        child: AnimatedSwitcher(
          duration: const Duration(seconds: 1),
          child: _myAnimatedWidget,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            if (_isAnimated) {
              _myAnimatedWidget = _blueContainer();
            } else {
              _myAnimatedWidget = _limeContainer();
            }
            _isAnimated = !_isAnimated;
          });
        },
        child: Icon(Icons.autorenew),
      ),
    );
  }

  Widget _blueContainer() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.blue,
      ),
      key: ValueKey(1),
      width: 200,
      height: 100,
    );
  }

  Widget _limeContainer() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        color: Colors.lime,
      ),
      key: ValueKey(2),
      width: 100,
      height: 200,
    );
  }
}