import 'package:flutter/material.dart';

class Sample3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample3 (flex: 1, 3, 9)'),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            ColorBox(),
            const Spacer(),
            ColorBox(),
            const Spacer(flex: 3),
            ColorBox(),
            const Spacer(flex: 9),
            ColorBox(),
          ],
        ),
      ),
    );
  }
}

class ColorBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(5),
        ),
        color: Colors.blue,
      ),
      width: 50,
      height: 50,
    );
  }
}
