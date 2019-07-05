import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample2 FlexFit.loose'),
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            flex: 2,
            fit: FlexFit.loose,
            child: Container(
              height: 100,
              color: Colors.cyan,
              child: Center(
                child: Text(
                  'FlexFit.loose',
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
