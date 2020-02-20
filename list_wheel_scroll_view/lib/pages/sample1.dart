import 'package:flutter/material.dart';

class Sample1Page extends StatefulWidget {
  static const String id = 'sample1';
  static const String title = 'Sample1';

  @override
  _Sample1PageState createState() => _Sample1PageState();
}

class _Sample1PageState extends State<Sample1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Sample1Page.title),
      ),
      body: ListWheelScrollView(
        diameterRatio: 1.5,
        // offAxisFraction: -0.5,
        // useMagnifier: true,
        // magnification: 1.5,
        itemExtent: 150,
        children: <Widget>[
          for (int i = 0; i < 10; i++) MyItem(index: i + 1),
        ],
      ),
    );
  }
}

class MyItem extends StatelessWidget {
  final int index;

  MyItem({@required this.index, Key key}) : super(key: key);

  static const colors = [
    Colors.indigo,
    Colors.blue,
    Colors.lightBlue,
  ];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 5 / 2,
      child: Container(
        decoration: BoxDecoration(
          color: colors[index % colors.length],
          borderRadius: BorderRadius.all(
            Radius.circular(5),
          ),
        ),
      ),
    );
  }
}
