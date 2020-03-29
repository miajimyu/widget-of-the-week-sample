import 'package:flutter/material.dart';

class Sample5Page extends StatefulWidget {
  static const String id = 'sample5';
  static const String title = 'Sample5 Animate the color';

  @override
  _Sample5PageState createState() => _Sample5PageState();
}

class _Sample5PageState extends State<Sample5Page>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<Color> _colorTween;

  @override
  void initState() {
    _animationController = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );
    _colorTween = _animationController.drive(
      ColorTween(
        begin: Colors.yellow,
        end: Colors.blue,
      ),
    );
    _animationController.repeat();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Sample5Page.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          CircularProgressIndicator(valueColor: _colorTween),
          LinearProgressIndicator(valueColor: _colorTween),
        ],
      ),
    );
  }
}
