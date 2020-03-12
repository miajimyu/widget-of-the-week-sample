import 'package:flutter/material.dart';

import 'pages/sample1.dart';
import 'pages/sample2.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomePage.id,
      routes: {
        HomePage.id: (context) => HomePage(),
        Sample1Page.id: (context) => Sample1Page(),
        Sample2Page.id: (context) => Sample2Page(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  static const String id = 'home';
  static const String title = 'Builder';

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
            _buildList(context, Sample2Page.title, Sample2Page.id),
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
