import 'package:flutter/material.dart';

class Sample4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Color _color = Colors.red;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample4 onLeave'),
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
              onLeave: (value) {
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
