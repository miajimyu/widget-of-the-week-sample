import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('AspectRatio.aspectRatio'),
      ),
      body: Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 3 / 2,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.blue,
              ),
              margin: const EdgeInsets.all(50.0),
              child: Center(
                child: Text(
                  'aspectRatio: 3 / 2',
                  style: Theme.of(context).textTheme.display1,
                ),
              ),
            ),
          ),
          AspectRatio(
            aspectRatio: 1.5,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
                color: Colors.lightBlue,
              ),
              margin: const EdgeInsets.all(50.0),
              child: Center(
                child: Text(
                  'aspectRatio: 1.5',
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
