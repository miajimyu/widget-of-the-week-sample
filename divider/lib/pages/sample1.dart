import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  static const String id = 'sample1';
  static const String title = 'Sample1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Sample1Page.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlueBox(),
          const Divider(),
          RedBox(),
        ],
      ),
    );
  }
}

class BlueBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        color: Colors.blue,
      ),
    );
  }
}

class RedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        color: Colors.red,
      ),
    );
  }
}
