import 'package:flutter/material.dart';

class Sample4Page extends StatefulWidget {
  @override
  _Sample4PageState createState() => _Sample4PageState();
}

class _Sample4PageState extends State<Sample4Page> {
  List<Container> items = [
    Container(color: Colors.blue),
    Container(color: Colors.yellow),
    Container(color: Colors.green),
    Container(color: Colors.grey),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample4'),
      ),
      body: Center(
        child: Container(
          height: 100,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            scrollDirection: Axis.horizontal,
            itemCount: items.length,
            itemBuilder: (context, i) {
              return Dismissible(
                background: Container(
                  color: Colors.blue[100],
                ),
                child: LimitedBox(
                  maxWidth: 100,
                  child: items[i],
                ),
                direction: DismissDirection.vertical,
                key: ValueKey(items[i]),
                onDismissed: (direction) {
                  setState(() {
                    items.removeAt(i);
                  });
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
