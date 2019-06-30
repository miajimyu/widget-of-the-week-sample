import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              width: 200,
              height: 200,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text('bottomRight'),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              width: 200,
              height: 200,
              child: Align(
                alignment: Alignment.centerRight,
                child: Text('centerRight'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
