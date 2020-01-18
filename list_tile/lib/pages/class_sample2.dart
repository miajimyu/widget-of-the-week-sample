import 'package:flutter/material.dart';

class ClassSample2Page extends StatefulWidget {
  @override
  _ClassSample2PageState createState() => _ClassSample2PageState();
}

class _ClassSample2PageState extends State<ClassSample2Page> {
  int _act = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClassSample2'),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: const Icon(Icons.flight_land),
            title: const Text('Trix\'s airplane'),
            subtitle: _act != 2
                ? const Text('The airplane is only in Act II.')
                : null,
            enabled: _act == 2,
            onTap: () {/* react to the tile being tapped */},
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.autorenew),
        onPressed: () {
          setState(() {
            _act = _act == 2 ? 1 : 2;
          });
        },
      ),
    );
  }
}
