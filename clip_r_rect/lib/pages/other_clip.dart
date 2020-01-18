import 'package:flutter/material.dart';

class OtherClipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Other Clip'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ClipOval(
              child: Container(
                color: Colors.lightBlue,
                width: 200,
                height: 200,
                child: const Center(
                  child: Text(
                    'ClipOval',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                color: Colors.blue,
                width: 200,
                height: 200,
                child: const Center(
                  child: Text(
                    'ClipPath',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(size.width, 0)
      ..lineTo(size.width / 2, size.height)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}
