import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  static const String id = 'sample2';
  static const String title = 'Sample2';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Sample2Page.title),
      ),
      body: Center(
        child: ClipPath(
          child: const BlueBox(200),
          clipper: WaveClipper(),
        ),
      ),
    );
  }
}

class BlueBox extends StatelessWidget {
  const BlueBox(this.size);

  final double size;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(color: Colors.blue),
      child: SizedBox(
        height: size,
        width: size,
      ),
    );
  }
}

class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0, size.height * .8)
      ..quadraticBezierTo(
          size.width / 3, size.height, size.width, size.height * .6)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
