import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Sample1'),
          bottom: const TabBar(
            tabs: <Widget>[
              Tab(text: 'Cat'),
              Tab(text: 'Dog'),
              Tab(text: 'Rabbit'),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Text(
                'cat',
                style: TextStyle(fontSize: 36),
              ),
            ),
            Center(
              child: Text(
                'dog',
                style: TextStyle(fontSize: 36),
              ),
            ),
            Center(
              child: Text(
                'rabbit',
                style: TextStyle(fontSize: 36),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
