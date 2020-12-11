import 'package:flutter/material.dart';

class Sample4Page extends StatefulWidget {
  static const String id = 'sample4';
  static const String title = 'Sample4 GridView.custom()';

  @override
  _Sample4PageState createState() => _Sample4PageState();
}

class _Sample4PageState extends State<Sample4Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Sample4Page.title),
      ),
      body: GridView.custom(
        childrenDelegate: SliverChildListDelegate(
          <Widget>[
            Container(color: Colors.red, height: 150),
            Container(color: Colors.green, height: 150),
            Container(color: Colors.yellow, height: 150),
            Container(color: Colors.red, height: 150),
            Container(color: Colors.green, height: 150),
            Container(color: Colors.yellow, height: 150),
            Container(color: Colors.red, height: 150),
            Container(color: Colors.green, height: 150),
            Container(color: Colors.yellow, height: 150),
            Container(color: Colors.red, height: 150),
            Container(color: Colors.green, height: 150),
            Container(color: Colors.yellow, height: 150),
          ],
        ),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 150,
          mainAxisSpacing: 20,
          crossAxisSpacing: 10,
        ),
      ),
    );
  }
}
