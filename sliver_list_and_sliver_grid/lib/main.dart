import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'pages/sliver_child_builder_delegate.dart';
import 'pages/sliver_child_list_delegate.dart';
import 'pages/sliver_grid_class_sample1.dart';
import 'pages/sliver_grid_count.dart';
import 'pages/sliver_grid_extent.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/sliver_list': (context) => SliverChildListDelegatePage(),
        '/sliver_builder': (context) => SliverChildBuilderDelegatePage(),
        '/sliver_grid_count': (context) => SliverGridCountPage(),
        '/sliver_grid_extent': (context) => SliverGridExtentPage(),
        '/sliver_grid_sample': (context) => SliverGridClassSample1Page(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliverList & SliverGrid'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(
                context, 'SliverList SliverChildListDelegate', '/sliver_list'),
            _buildList(context, 'SliverList SliverChildBuilderDelegate',
                '/sliver_builder'),
            _buildList(context, 'SliverGrid.count()', '/sliver_grid_count'),
            _buildList(context, 'SliverGrid.extent()', '/sliver_grid_extent'),
            _buildList(context, 'SliverGrid Sample', '/sliver_grid_sample'),
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
