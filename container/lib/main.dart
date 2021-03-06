import 'package:flutter/material.dart';

import 'pages/class_sample1.dart';
import 'pages/class_sample2.dart';
import 'pages/sample1.dart';
import 'pages/sample2.dart';
import 'pages/sample3.dart';
import 'pages/sample4.dart';
import 'pages/sample5.dart';
import 'pages/sample6.dart';
import 'pages/sample7.dart';
import 'pages/sample8.dart';
import 'pages/sample9.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/sample1': (context) => Sample1Page(),
        '/sample2': (context) => Sample2Page(),
        '/sample3': (context) => Sample3Page(),
        '/sample4': (context) => Sample4Page(),
        '/sample5': (context) => Sample5Page(),
        '/sample6': (context) => Sample6Page(),
        '/sample7': (context) => Sample7Page(),
        '/sample8': (context) => Sample8Page(),
        '/sample9': (context) => Sample9Page(),
        '/class_sample1': (context) => ClassSample1Page(),
        '/class_sample2': (context) => ClassSample2Page(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(context, 'Sample1', '/sample1'),
            _buildList(context, 'Sample2', '/sample2'),
            _buildList(context, 'Sample3', '/sample3'),
            _buildList(context, 'Sample4', '/sample4'),
            _buildList(context, 'Sample5', '/sample5'),
            _buildList(context, 'Sample6', '/sample6'),
            _buildList(context, 'Sample7', '/sample7'),
            _buildList(context, 'Sample8', '/sample8'),
            _buildList(context, 'Sample9', '/sample9'),
            _buildList(context, 'ClassSample1', '/class_sample1'),
            _buildList(context, 'ClassSample2', '/class_sample2'),
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
