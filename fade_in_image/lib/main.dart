import 'package:fade_in_image/pages/asset_network.dart';
import 'package:fade_in_image/pages/fade_in_curve.dart';
import 'package:fade_in_image/pages/fade_in_duration.dart';
import 'package:fade_in_image/pages/memory_network.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/memory_network': (context) => MemoryNetworkPage(),
        '/asset_network': (context) => AssetNetworkPage(),
        '/fade_in_duration': (context) => FadeInDurationPage(),
        '/fade_in_curve': (context) => FadeInCurvePage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FadeInImage'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(
                context, 'FadeInImage.memoryNetwork()', '/memory_network'),
            _buildList(context, 'FadeInImage.assetNetwork()', '/asset_network'),
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
