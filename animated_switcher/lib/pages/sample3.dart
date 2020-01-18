import 'package:flutter/material.dart';

class Sample3Page extends StatefulWidget {
  @override
  _Sample3PageState createState() => _Sample3PageState();
}

class _Sample3PageState extends State<Sample3Page> {
  Widget _myAnimatedWidget;
  bool _isAnimated = false;

  @override
  void initState() {
    _myAnimatedWidget = _blueContainer();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample3 RotationTransition'),
      ),
      body: Center(
        child: AnimatedSwitcher(
          duration: const Duration(milliseconds: 300),
          transitionBuilder: (child, animation) => RotationTransition(
            child: child,
            turns: animation,
          ),
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
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.blue,
      ),
      key: const ValueKey<int>(1),
      width: 200,
      height: 100,
    );
  }

  Widget _limeContainer() {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        color: Colors.lime,
      ),
      key: const ValueKey<int>(2),
      width: 100,
      height: 200,
    );
  }
}
