import 'package:flutter/material.dart';

class Sample3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample3 SizedBox.expand()'),
      ),
      body: Center(
        child: SizedBox.expand(
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
        ),
      ),
    );
  }
}
