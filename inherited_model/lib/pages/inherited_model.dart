import 'package:flutter/material.dart';

class InheritedModelPage extends StatefulWidget {
  @override
  _InheritedModelPageState createState() => _InheritedModelPageState();
}

class _InheritedModelPageState extends State<InheritedModelPage> {
  var colorOne = Colors.amber;
  var colorTwo = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('InheritedModel'),
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

class MyAncestor extends InheritedModel<NUMBER_TYPE> {
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

  @override
  bool updateShouldNotifyDependent(
      MyAncestor oldWidget, Set<NUMBER_TYPE> dependencies) {
    return ((dependencies.contains(NUMBER_TYPE.ONE) &&
            colorOne != oldWidget.colorOne) ||
        (dependencies.contains(NUMBER_TYPE.TWO) &&
            colorTwo != oldWidget.colorTwo));
  }

  static MyAncestor of(BuildContext context, {NUMBER_TYPE aspect}) {
    return InheritedModel.inheritFrom<MyAncestor>(context, aspect: aspect);
  }
}

class ColorOneWidget extends StatelessWidget {
  const ColorOneWidget();

  @override
  Widget build(BuildContext context) {
    final ancestor = MyAncestor.of(context, aspect: NUMBER_TYPE.ONE);

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
    final ancestor = MyAncestor.of(context, aspect: NUMBER_TYPE.TWO);

    return Container(
      color: ancestor.colorTwo,
      height: 50.0,
      width: 50.0,
    );
  }
}
