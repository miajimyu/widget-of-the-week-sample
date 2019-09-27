import 'package:flutter/material.dart';

class Sample1Page extends StatefulWidget {
  @override
  _Sample1PageState createState() => _Sample1PageState();
}

class _Sample1PageState extends State<Sample1Page> {
  var color = Colors.lime;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample1 ColorInfo -> 1 -> 2 -> 3'),
      ),
      body: ColorInfo(
        color: color,
        child: One(),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.autorenew),
        onPressed: () {
          setState(() {
            color = color == Colors.lime ? Colors.blue : Colors.lime;
          });
        },
      ),
    );
  }
}

class ColorInfo extends InheritedWidget {
  final Color color;
  ColorInfo({
    @required this.color,
    @required Widget child,
  }) : super(child: child);

  @override
  bool updateShouldNotify(ColorInfo oldWidget) => oldWidget.color != color;

  static ColorInfo of(BuildContext context) =>
      context.inheritFromWidgetOfExactType(ColorInfo) as ColorInfo;
}

class One extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final color = ColorInfo.of(context).color;

    return Column(
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          color: color,
          child: Center(
            child: Text('1', style: TextStyle(fontSize: 30)),
          ),
        ),
        Two(),
      ],
    );
  }
}

class Two extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final color = ColorInfo.of(context).color;

    return Column(
      children: <Widget>[
        Container(
          width: 100,
          height: 100,
          color: color,
          child: Center(
            child: Text('2', style: TextStyle(fontSize: 30)),
          ),
        ),
        Three()
      ],
    );
  }
}

class Three extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final color = ColorInfo.of(context).color;

    return Container(
      width: 100,
      height: 100,
      color: color,
      child: Center(
        child: Text('3', style: TextStyle(fontSize: 30)),
      ),
    );
  }
}
