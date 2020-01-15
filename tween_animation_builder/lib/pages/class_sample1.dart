import 'package:flutter/material.dart';

class ClassSample1Page extends StatefulWidget {
  @override
  _ClassSample1PageState createState() => _ClassSample1PageState();
}

class _ClassSample1PageState extends State<ClassSample1Page> {
  double targetValue = 24.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1'),
      ),
      body: Center(
        child: TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 0, end: targetValue),
          duration: const Duration(seconds: 1),
          builder: (BuildContext context, double size, Widget child) {
            return IconButton(
              iconSize: size,
              color: Colors.blue,
              icon: child,
              onPressed: () {
                setState(() {
                  targetValue = targetValue == 24.0 ? 48.0 : 24.0;
                });
              },
            );
          },
          child: Icon(Icons.aspect_ratio),
        ),
      ),
    );
  }
}
