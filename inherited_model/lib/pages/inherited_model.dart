import 'package:flutter/material.dart';

class InheritedModelPage extends StatefulWidget {
  @override
  _InheritedModelPageState createState() => _InheritedModelPageState();
}

class _InheritedModelPageState extends State<InheritedModelPage> {
  MaterialColor colorOne = Colors.amber;
  MaterialColor colorTwo = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InheritedModel'),
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
  one,
  two,
}

class MyAncestor extends InheritedModel<NUMBER_TYPE> {
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
      MyAncestor oldWidget, Set<NUMBER_TYPE> dependencies) {
    return dependencies.contains(NUMBER_TYPE.one) &&
            colorOne != oldWidget.colorOne ||
        dependencies.contains(NUMBER_TYPE.two) &&
            colorTwo != oldWidget.colorTwo;
  }

  static MyAncestor of(BuildContext context, {NUMBER_TYPE aspect}) {
    return InheritedModel.inheritFrom<MyAncestor>(context, aspect: aspect);
  }
}

class ColorOneWidget extends StatelessWidget {
  const ColorOneWidget();

  @override
  Widget build(BuildContext context) {
    final ancestor = MyAncestor.of(context, aspect: NUMBER_TYPE.one);

    return Container(
      color: ancestor.colorOne,
      height: 50,
      width: 50,
    );
  }
}

class ColorTwoWidget extends StatelessWidget {
  const ColorTwoWidget();

  @override
  Widget build(BuildContext context) {
    final ancestor = MyAncestor.of(context, aspect: NUMBER_TYPE.two);

    return Container(
      color: ancestor.colorTwo,
      height: 50,
      width: 50,
    );
  }
}
