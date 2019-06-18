import 'package:fade_in_image/pages/assetNetwork.dart';
import 'package:fade_in_image/pages/fade_in_curve.dart';
import 'package:fade_in_image/pages/fade_in_duration.dart';
import 'package:fade_in_image/pages/memoryNetwork.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => MyHomePage(),
        '/memoryNetwork': (BuildContext context) => MemoryNetworkPage(),
        '/assetNetwork': (BuildContext context) => AssetNetworkPage(),
        '/fade_in_duration': (BuildContext context) => FadeInDurationPage(),
        '/fade_in_curve': (BuildContext context) => FadeInCurvePage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FadeInImage'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(
                context, 'FadeInImage.memoryNetwork()', '/memoryNetwork'),
            _buildList(context, 'FadeInImage.assetNetwork()', '/assetNetwork'),
            _buildList(context, 'FadeInDuration', '/fade_in_duration'),
            _buildList(context, 'FadeInCurve', '/fade_in_curve'),
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
