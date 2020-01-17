import 'package:flutter/material.dart';

import 'pages/floating_action_button1.dart';
import 'pages/floating_action_button2.dart';
import 'pages/floating_action_button3.dart';
import 'pages/floating_action_button4.dart';
import 'pages/sample1.dart';
import 'pages/sample2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/fab1': (context) => FAB1(),
        '/fab2': (context) => FAB2(),
        '/fab3': (context) => FAB3(),
        '/fab4': (context) => FAB4(),
        '/sample1': (context) => Sample1(),
        '/sample2': (context) => Sample2(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FloatingActionButton'),
      ),
      body: ListView(
        children: <Widget>[
          _buildList(context, 'FloatingActionButton', '/fab1'),
          _buildList(context, 'Just use a BottomAppBar', '/fab2'),
          _buildList(context, 'Set the location (endDocked)', '/fab3'),
          _buildList(context, 'Set the location (centerDocked)', '/fab4'),
          _buildList(context, 'Sample1', '/sample1'),
          _buildList(context, 'Sample2', '/sample2'),
        ],
      ),
    );
  }

  Widget _buildList(BuildContext context, String title, String routeName) {
    return Card(
      child: ListTile(
        title: Text(title),
        onTap: () {
          Navigator.pushNamed(context, routeName);
        },
        trailing: Icon(Icons.chevron_right),
      ),
    );
  }
}
