import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1 (flex: 1, 1)'),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            ColorBox(),
            const Spacer(),
            ColorBox(),
            const Spacer(),
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
      width: 100,
      height: 100,
    );
  }
}
