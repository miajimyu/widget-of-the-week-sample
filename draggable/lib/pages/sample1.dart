import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Draggable<Color>(
              data: const Color(0x000000ff),
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
              builder: (context, candidates, rejects) {
                return candidates.isNotEmpty
                    ? Container(
                        color: candidates[0],
                        width: 100,
                        height: 100,
                      )
                    : Container(
                        color: Colors.red,
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
