import 'package:flutter/material.dart';

class Sample3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color _color = Colors.red;
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample3 onAccept'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Draggable<Color>(
              data: Colors.grey,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.blue,
              ),
              childWhenDragging: Container(
                width: 100,
                height: 100,
                color: Colors.indigo,
              ),
              feedback: Container(
                width: 100,
                height: 100,
                color: Colors.grey,
              ),
            ),
            DragTarget<Color>(
              onAccept: (value) {
                _color = value;
              },
              builder: (context, candidates, rejects) {
                return Container(
                  color: _color,
                  width: 100,
                  height: 100,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}