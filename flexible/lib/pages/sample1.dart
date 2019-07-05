import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample1'),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 2,
            child: Container(
              color: Colors.cyan,
              child: Center(
                child: Text(
                  '2 Flex',
                  style: Theme.of(context).textTheme.display1,
                ),
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
