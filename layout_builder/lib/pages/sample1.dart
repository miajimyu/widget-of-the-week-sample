import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample1'),
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 600) {
            return MyOneColumnLayout();
          } else {
            return MyTwoColumnLayout();
          }
        },
      ),
    );
  }
}

class MyOneColumnLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.blue,
          width: 200,
          height: 200,
        )
      ],
    );
  }
}

class MyTwoColumnLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Column(
          children: <Widget>[
            Container(
              color: Colors.blue,
              width: 200,
              height: 200,
            )
          ],
        ),
        Column(
          children: <Widget>[
            Container(
              color: Colors.yellow,
              width: 200,
              height: 200,
            )
          ],
        ),
      ],
    );
  }
}
