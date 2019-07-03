import 'package:flutter/material.dart';

class Sample2Page extends StatefulWidget {
  @override
  _Sample2PageState createState() => _Sample2PageState();
}

class _Sample2PageState extends State<Sample2Page> {
  final ValueNotifier<String> value = ValueNotifier<String>('Hello!');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample2'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            ValueListenableBuilder(
              valueListenable: value,
              builder: (context, value, _) {
                return Text(
                  '$value',
                  style: Theme.of(context).textTheme.display1,
                );
              },
            ),
            TextFormField(
              onFieldSubmitted: (String string) {
                value.value = 'Hello, $string';
              },
            ),
          ],
        ),
      ),
    );
  }
}
