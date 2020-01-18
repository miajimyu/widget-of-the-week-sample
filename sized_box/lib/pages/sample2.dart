import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample2 (w&h : double.infinity)'),
      ),
      body: Center(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
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
