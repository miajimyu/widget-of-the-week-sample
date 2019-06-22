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
            colorOne = colorOne == Colors.amber ? Colors.lime : Colors.amber;
          });
        },
        child: Icon(Icons.autorenew),
      ),
    );
  }
}

class MyAncestor extends InheritedModel<String> {
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

  @override
  bool updateShouldNotifyDependent(
      MyAncestor oldWidget, Set<String> dependencies) {
    if (dependencies.contains('one') && colorOne != oldWidget.colorOne) {
      return true;
    }
    if (dependencies.contains('two') && colorTwo != oldWidget.colorTwo) {
      return true;
    }
    return false;
  }
}

class ColorOneWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final ancestor = InheritedModel.inheritFrom<MyAncestor>(
      context,
      aspect: 'one',
    );
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
