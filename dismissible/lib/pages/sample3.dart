import 'package:flutter/material.dart';

class Sample3Page extends StatefulWidget {
  @override
  _Sample3PageState createState() => _Sample3PageState();
}

class _Sample3PageState extends State<Sample3Page> {
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
        title: const Text('Sample3'),
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
              alignment: Alignment.centerLeft,
              color: Colors.green,
              child: const Padding(
                padding: EdgeInsets.only(left: 20),
                child: Icon(Icons.check),
              ),
            ),
            secondaryBackground: Container(
              alignment: Alignment.centerRight,
              color: Colors.red,
              child: const Padding(
                padding: EdgeInsets.only(right: 20),
                child: Icon(Icons.cancel),
              ),
            ),
            key: ValueKey(items[i]),
          );
        },
      ),
    );
  }
}
