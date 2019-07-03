import 'package:flutter/material.dart';

class Sample4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample4 Empty SizedBox'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            MyButton(),
            SizedBox(height: 200),
            OtherButton(),
          ],
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: RaisedButton(
        onPressed: () {},
        child: Text(
          'Button',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        color: Colors.blue,
      ),
    );
  }
}

class OtherButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: RaisedButton(
        onPressed: () {},
        child: Text(
          'OtherButton',
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        color: Colors.blue,
      ),
    );
  }
}
