import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  static const String id = 'sample2';
  static const String title = 'Sample2 Custom divider';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Sample2Page.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          BlueBox(),
          const Divider(
            height: 100,
            thickness: 20,
            color: Colors.purple,
            indent: 20,
            endIndent: 20,
          ),
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
