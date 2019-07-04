import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample2 onWillAccept'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Draggable<Color>(
              data: Color(0x000000ff),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                DragTarget<Color>(
                  onWillAccept: (_) => false,
                  builder: (context, candidates, rejects) {
                    return candidates.length > 0
                        ? Container(
                            color: candidates[0],
                            width: 100,
                            height: 100,
                          )
                        : Container(
                            color: Colors.green,
                            width: 100,
                            height: 100,
                            child: Center(
                              child: Text(
                                'false',
                                style: Theme.of(context).textTheme.display1,
                              ),
                            ),
                          );
                  },
                ),
                DragTarget<Color>(
                  onWillAccept: (_) => true,
                  builder: (context, candidates, rejects) {
                    return candidates.length > 0
                        ? Container(
                            color: candidates[0],
                            width: 100,
                            height: 100,
                          )
                        : Container(
                            color: Colors.red,
                            width: 100,
                            height: 100,
                            child: Center(
                              child: Text(
                                'true',
                                style: Theme.of(context).textTheme.display1,
                              ),
                            ),
                          );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
