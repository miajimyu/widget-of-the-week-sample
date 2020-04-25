import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  static const String id = 'sample2';
  static const String title = 'Sample2 clipper';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Sample2Page.title),
      ),
      body: Center(
        child: ClipOval(
          clipper: MyClipper(),
          child: Image.asset('images/kirin.png'),
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    return const Rect.fromLTWH(100, 100, 200, 100);
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => false;
}
