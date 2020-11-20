import 'package:flutter/material.dart';

import 'pages/custom_scroll_view_class_sample1.dart';
import 'pages/sliver_app_bar.dart';
import 'pages/sliver_app_bar_class_sample1.dart';
import 'pages/sliver_app_bar_floating.dart';
import 'pages/sliver_app_bar_on_stretch_trigger.dart';
import 'pages/sliver_app_bar_pinned.dart';
import 'pages/sliver_app_bar_snap.dart';
import 'pages/sliver_app_bar_stretch.dart';
import 'pages/sliver_app_bar_stretch_modes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/sliverappbar': (context) => SliverAppBarPage(),
        '/floating': (context) => SliverAppBarFloatingPage(),
        '/pinned': (context) => SliverAppBarPinnedPage(),
        '/snap': (context) => SliverAppBarSnapPage(),
        '/stretch': (context) => SliverAppBarStretchPage(),
        '/stretch_modes': (context) => SliverAppBarStretchModesPage(),
        '/on_stretch_trigger': (context) => SliverAppBarOnStretchTriggerPage(),
        '/sliverappbar_sample': (context) => SliverAppBarSamplePage(),
        '/customscrollview_sample': (context) => CustomScrollViewSamplePage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SliverAppBar'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(context, 'SliverAppBar', '/sliverappbar'),
            _buildList(context, 'SliverAppBar Floating', '/floating'),
            _buildList(context, 'SliverAppBar Pinned', '/pinned'),
            _buildList(context, 'SliverAppBar Snap & Floating', '/snap'),
            _buildList(context, 'SliverAppBar Stretch', '/stretch'),
            _buildList(context, 'SliverAppBar StretchModes', '/stretch_modes'),
            _buildList(context, 'SliverAppBar OnStretchTrigger',
                '/on_stretch_trigger'),
            _buildList(
                context, 'Sample (SliverAppBar class)', '/sliverappbar_sample'),
            _buildList(context, 'Sample (CustomScrollView class)',
                '/customscrollview_sample'),
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
