import 'package:flutter/material.dart';

class Sample2Page extends StatefulWidget {
  @override
  _Sample2PageState createState() => _Sample2PageState();
}

class _Sample2PageState extends State<Sample2Page> {
  List<String> items = [
    'This is a list item',
    'This is aoso a list item',
    "we've got a lot of items",
    'in this list!'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample2'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, i) {
          return Dismissible(
            child: ListTile(
              title: Text(
                items[i],
                style: Theme.of(context).textTheme.display1,
              ),
            ),
            onDismissed: (direction) {
              setState(() {
                items.removeAt(i);
              });
            },
            background: Container(
              color: Colors.lightBlue,
            ),
            key: ValueKey(items[i]),
          );
        },
      ),
    );
  }
}
