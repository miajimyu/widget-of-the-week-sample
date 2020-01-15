import 'package:flutter/material.dart';

class ClassSample1Page extends StatefulWidget {
  @override
  _ClassSample1PageState createState() => _ClassSample1PageState();
}

class _ClassSample1PageState extends State<ClassSample1Page> {
  bool _first = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClassSample1'),
      ),
      body: Center(
        child: AnimatedCrossFade(
          duration: const Duration(seconds: 3),
          firstChild: const FlutterLogo(
              style: FlutterLogoStyle.horizontal, size: 100.0),
          secondChild:
              const FlutterLogo(style: FlutterLogoStyle.stacked, size: 100.0),
          crossFadeState:
              _first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.autorenew),
        onPressed: () => setState(() => _first = !_first),
      ),
    );
  }
}
