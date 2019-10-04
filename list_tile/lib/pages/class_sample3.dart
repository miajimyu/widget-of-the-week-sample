import 'package:flutter/material.dart';

class ClassSample3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ClassSample3'),
      ),
      body: ListTile(
        leading: GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () {},
          child: Container(
            width: 48,
            height: 48,
            padding: EdgeInsets.symmetric(vertical: 4.0),
            alignment: Alignment.center,
            child: CircleAvatar(),
          ),
        ),
        title: Text('title'),
        dense: false,
      ),
    );
  }
}
