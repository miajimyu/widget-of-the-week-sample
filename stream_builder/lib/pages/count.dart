import 'dart:async';

import 'package:flutter/material.dart';

class CountPage extends StatefulWidget {
  @override
  _CountPageState createState() => _CountPageState();
}

class _CountPageState extends State<CountPage> {
  int _counter = 0;
  StreamController<int> _events;

  @override
  void initState() {
    _events = StreamController<int>()..add(0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Count'),
      ),
      body: StreamBuilder(
        stream: _events.stream,
        builder: (context, snapshot) {
          return Center(
            child: Text(
              snapshot.data.toString(),
              style: Theme.of(context).textTheme.display1,
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _counter++;
          _events.add(_counter);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
