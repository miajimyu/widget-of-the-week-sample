import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1 (w:200, h:100)'),
      ),
      body: Center(
        child: SizedBox(
          width: 200,
          height: 100,
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
