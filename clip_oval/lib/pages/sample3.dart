import 'dart:math';

import 'package:flutter/material.dart';

class Sample3Page extends StatefulWidget {
  static const String id = 'sample3';
  static const String title = 'Sample3 Animate ClipOval';

  @override
  _Sample3PageState createState() => _Sample3PageState();
}

class _Sample3PageState extends State<Sample3Page> {
  bool _isDisplayed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Sample3Page.title),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            TweenAnimationBuilder(
              tween: _isDisplayed
                  ? Tween<double>(begin: 0, end: 1)
                  : Tween<double>(begin: 1, end: 0),
              duration: const Duration(seconds: 1),
              curve: Curves.easeOutCirc,
              builder: (context, double size, child) {
                return ClipOval(
                  clipper: MyCircleClipper(size),
                  child: child,
                );
              },
              child: Container(
                child: Image.asset('images/kirin.png'),
                width: 200,
                height: 200,
              ),
            ),
            TweenAnimationBuilder(
              tween: _isDisplayed
                  ? Tween<double>(begin: 0, end: 1)
                  : Tween<double>(begin: 1, end: 0),
              duration: const Duration(seconds: 1),
              curve: Curves.easeOutCirc,
              builder: (context, double size, child) {
                return ClipOval(
                  clipper: MyCircleClipper(size),
                  child: Transform.scale(
                    scale: 2 - size,
                    child: Container(
                      child: Image.asset('images/kirin.png'),
                      width: 200,
                      height: 200,
                    ),
                  ),
                );
              },
            ),
            AnimatedContainer(
              width: _isDisplayed ? 200 : 0,
              height: 200,
              duration: const Duration(seconds: 1),
              curve: Curves.easeOutCirc,
              child: ClipOval(
                child: Image.asset('images/kirin.png'),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isDisplayed = !_isDisplayed;
          });
        },
        child: Icon(Icons.autorenew),
      ),
    );
  }
}

class MyCircleClipper extends CustomClipper<Rect> {
  MyCircleClipper(this.radius);

  final double radius;

  @override
  Rect getClip(Size size) {
    final smaller = min(size.width, size.height);
    return Rect.fromCenter(
      center: size.center(Offset.zero),
      width: smaller * radius,
      height: smaller * radius,
    );
  }

  @override
  bool shouldReclip(MyCircleClipper oldClipper) {
    return radius != oldClipper.radius;
  }
}
