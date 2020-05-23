import 'package:flutter/material.dart';

import 'pages/class_sample1.dart';
import 'pages/class_sample2.dart';
import 'pages/class_sample3.dart';
import 'pages/sample1.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        Sample1Page.id: (context) => Sample1Page(),
        ClassSample1Page.id: (context) => ClassSample1Page(),
        ClassSample2Page.id: (context) => ClassSample2Page(),
        ClassSample3Page.id: (context) => ClassSample3Page(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  static const String id = 'home';
  static const String title = 'CheckboxListTile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(context, Sample1Page.title, Sample1Page.id),
            _buildList(context, ClassSample1Page.title, ClassSample1Page.id),
            _buildList(context, ClassSample2Page.title, ClassSample2Page.id),
            _buildList(context, ClassSample3Page.title, ClassSample3Page.id),
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
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}
