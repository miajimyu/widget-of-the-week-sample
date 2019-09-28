import 'package:flutter/material.dart';

class InheritedWidgetPage extends StatefulWidget {
  @override
  _InheritedWidgetPageState createState() => _InheritedWidgetPageState();
}

class _InheritedWidgetPageState extends State<InheritedWidgetPage> {
  var colorOne = Colors.amber;
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  GestureDetector(
                    child: const ColorOneWidget(),
                    onTap: () => setState(() {
                      colorOne =
                          colorOne == Colors.amber ? Colors.lime : Colors.amber;
                    }),
                  ),
                  GestureDetector(
                    child: const ColorTwoWidget(),
                    onTap: () => setState(() {
                      colorTwo =
                          colorTwo == Colors.blue ? Colors.lime : Colors.blue;
                    }),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

enum NUMBER_TYPE {
  ONE,
  TWO,
}

class MyAncestor extends InheritedWidget {
  final Color colorOne;
  final Color colorTwo;

  const MyAncestor(
    this.colorOne,
    this.colorTwo,
    Widget child,
  ) : super(child: child);

  @override
  bool updateShouldNotify(MyAncestor oldWidget) {
    return colorOne != oldWidget.colorOne || colorTwo != oldWidget.colorTwo;
  }

  static MyAncestor of(BuildContext context) {
    return context.inheritFromWidgetOfExactType(MyAncestor) as MyAncestor;
  }
}

class ColorOneWidget extends StatelessWidget {
  const ColorOneWidget();

  @override
  Widget build(BuildContext context) {
    final ancestor = MyAncestor.of(context);

    return Container(
      color: ancestor.colorOne,
      height: 50.0,
      width: 50.0,
    );
  }
}

class ColorTwoWidget extends StatelessWidget {
  const ColorTwoWidget();

  @override
  Widget build(BuildContext context) {
    final ancestor = MyAncestor.of(context);

    return Container(
      color: ancestor.colorTwo,
      height: 50.0,
      width: 50.0,
    );
  }
}
