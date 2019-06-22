import 'package:flutter/material.dart';

class InheritedWidgetPage extends StatefulWidget {
  @override
  _InheritedWidgetPageState createState() => _InheritedWidgetPageState();
}

class _InheritedWidgetPageState extends State<InheritedWidgetPage> {
  var colorOne = Colors.lightBlue;
  var colorTwo = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InheritedWidget'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            MyAncestor(
              colorOne,
              colorTwo,
              Column(
                children: <Widget>[
                  ColorOneWidget(),
                  ColorTwoWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            colorOne =
                colorOne == Colors.lightBlue ? Colors.amber : Colors.lightBlue;
          });
        },
        child: Icon(Icons.autorenew),
      ),
    );
  }
}

class MyAncestor extends InheritedWidget {
  const MyAncestor(
    this.colorOne,
    this.colorTwo,
    Widget child,
  ) : super(child: child);

  final Color colorOne;
  final Color colorTwo;

  @override
  bool updateShouldNotify(MyAncestor oldWidget) {
    return colorOne != oldWidget.colorOne || colorTwo != oldWidget.colorTwo;
  }
}

class ColorOneWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ancestor =
        context.inheritFromWidgetOfExactType(MyAncestor) as MyAncestor;
    return Container(
      color: ancestor.colorOne,
      height: 50.0,
      width: 50.0,
    );
  }
}

class ColorTwoWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ancestor =
        context.inheritFromWidgetOfExactType(MyAncestor) as MyAncestor;
    return Container(
      color: ancestor.colorTwo,
      height: 50.0,
      width: 50.0,
    );
  }
}
