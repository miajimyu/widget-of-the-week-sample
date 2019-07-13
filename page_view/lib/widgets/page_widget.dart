import 'package:flutter/material.dart';

class MyPage1Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlue,
      child: Center(
        child: Text(
          'Page 1',
          style: Theme.of(context).textTheme.display1,
        ),
      ),
    );
  }
}

class MyPage2Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: Center(
        child: Text(
          'Page 2',
          style: Theme.of(context).textTheme.display1,
        ),
      ),
    );
  }
}

class MyPage3Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightGreen,
      child: Center(
        child: Text(
          'Page 3',
          style: Theme.of(context).textTheme.display1,
        ),
      ),
    );
  }
}
