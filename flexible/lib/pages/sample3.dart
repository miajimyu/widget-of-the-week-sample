import 'package:flutter/material.dart';

class Sample3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample3 Mix fixed-size widget'),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 100,
            color: Colors.cyan,
            child: Center(
              child: Text(
                'height: 100',
                style: Theme.of(context).textTheme.display1,
              ),
            ),
          ),
          Flexible(
            flex: 3,
            child: Container(
              color: Colors.teal,
              child: Center(
                child: Text(
                  '3 Flex',
                  style: Theme.of(context).textTheme.display1,
                ),
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: Container(
              color: Colors.indigo,
              child: Center(
                child: Text(
                  '1 Flex',
                  style: Theme.of(context).textTheme.display1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
