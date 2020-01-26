import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
              Tab(text: 'Fish'),
            ],
          ),
        ),
        body: const TabBarView(
          children: <Widget>[
            Center(
              child: Icon(
                FontAwesomeIcons.cat,
                size: 100,
              ),
            ),
            Center(
              child: Icon(
                FontAwesomeIcons.dog,
                size: 100,
              ),
            ),
            Center(
              child: Icon(
                FontAwesomeIcons.fish,
                size: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
