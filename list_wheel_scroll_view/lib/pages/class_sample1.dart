import 'package:flutter/material.dart';

class ClassSample1Page extends StatefulWidget {
  static const String id = 'class_sample1';
  static const String title = 'ClassSample1';

  @override
  _ClassSample1PageState createState() => _ClassSample1PageState();
}

class _ClassSample1PageState extends State<ClassSample1Page> {
  double _diameterRatio = 2;

  double _offAxisFraction = 0;

  double _magnification = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListWheelScrollView demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Spacer(),
            SizedBox(
              height: 200,
              child: ListWheelScrollView(
                useMagnifier: _magnification > 1,
                magnification: _magnification,
                diameterRatio: _diameterRatio,
                offAxisFraction: _offAxisFraction,
                itemExtent: 50,
                children: <Widget>[
                  for (int i = 0; i < 10; i++) MyItem(index: i + 1)
                ],
              ),
            ),
            Spacer(),
            Text('offAxisFraction'),
            Slider(
              value: _offAxisFraction,
              onChanged: (newValue) =>
                  setState(() => _offAxisFraction = newValue),
              min: -2,
              max: 2,
            ),
            Text('diameterRatio'),
            Slider(
              value: _diameterRatio,
              onChanged: (newValue) =>
                  setState(() => _diameterRatio = newValue),
              min: 0.1,
              max: 10,
            ),
            Text('magnification'),
            Slider(
              value: _magnification,
              onChanged: (newValue) =>
                  setState(() => _magnification = newValue),
              min: 1,
              max: 3,
            ),
          ],
        ),
      ),
    );
  }
}

class MyItem extends StatelessWidget {
  final int index;

  MyItem({@required this.index, Key key}) : super(key: key);

  static const colors = [
    Colors.pink,
    Colors.indigo,
    Colors.grey,
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.yellow,
  ];

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 16 / 9,
      child: Container(
        color: colors[index % colors.length],
        child: Center(
            child: Text(
          '$index',
          style: TextStyle(color: Colors.white),
        )),
      ),
    );
  }
}
