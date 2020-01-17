import 'package:flutter/material.dart';
import 'package:inherited_model/pages/inherited_model.dart';
import 'package:inherited_model/pages/inherited_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/inherited_widget': (context) => InheritedWidgetPage(),
        '/inherited_model': (context) => InheritedModelPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('InheritedModel'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(context, 'InheritedWidget', '/inherited_widget'),
            _buildList(context, 'InheritedModel', '/inherited_model'),
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
