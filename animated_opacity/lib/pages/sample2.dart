import 'package:flutter/material.dart';

class Sample2Page extends StatefulWidget {
  @override
  _Sample2PageState createState() => _Sample2PageState();
}

class _Sample2PageState extends State<Sample2Page> {
  double _currentOpacity = 0;
  List<bool> isSelected;

  @override
  void initState() {
    isSelected = <bool>[true, false];
    super.initState();
  }

  Curve _getCurve() {
    if (isSelected[0] == true) {
      return Curves.linear;
    } else {
      return Curves.elasticOut;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample2 (Opacity=$_currentOpacity)'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          AnimatedOpacity(
            child: const Center(
              child: FlutterLogo(size: 300),
            ),
            curve: _getCurve(),
            opacity: _currentOpacity,
            duration: const Duration(seconds: 1),
          ),
          ToggleButtons(
            children: const <Widget>[
              Text('linear'),
              Text('elasticOut'),
            ],
            onPressed: (index) {
              setState(() {
                for (var i = 0; i < isSelected.length; i++) {
                  if (i == index) {
                    isSelected[i] = true;
                  } else {
                    isSelected[i] = false;
                  }
                }
              });
            },
            isSelected: isSelected,
          ),
        ],
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
