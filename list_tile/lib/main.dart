import 'package:flutter/material.dart';

import 'pages/sample1.dart';
import 'pages/class_sample1.dart';
import 'pages/class_sample2.dart';
import 'pages/class_sample3.dart';
import 'pages/class_sample4.dart';
import 'pages/class_sample5.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => HomePage(),
        '/sample1': (BuildContext context) => Sample1Page(),
        '/class_sample1': (BuildContext context) => ClassSample1Page(),
        '/class_sample2': (BuildContext context) => ClassSample2Page(),
        '/class_sample3': (BuildContext context) => ClassSample3Page(),
        '/class_sample4': (BuildContext context) => ClassSample4Page(),
        '/class_sample5': (BuildContext context) => ClassSample5Page(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTile'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(context, 'Sample1', '/sample1'),
            _buildList(context, 'ClassSample1', '/class_sample1'),
            _buildList(context, 'ClassSample2', '/class_sample2'),
            _buildList(context, 'ClassSample3', '/class_sample3'),
            _buildList(context, 'ClassSample4', '/class_sample4'),
            _buildList(context, 'ClassSample5', '/class_sample5'),
          ],
        ),
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
