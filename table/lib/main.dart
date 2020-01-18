import 'package:flutter/material.dart';
import 'package:table/pages/alignment_bottom.dart';
import 'package:table/pages/alignment_middle.dart';
import 'package:table/pages/border.dart';
import 'package:table/pages/column_1_width_dot2.dart';
import 'package:table/pages/fixed_column_width.dart';
import 'package:table/pages/flex_column_width.dart';
import 'package:table/pages/fraction_column_width.dart';
import 'package:table/pages/table.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => MyHomePage(),
        '/table': (context) => TablePage(),
        '/middle': (context) => AlignmentMiddlePage(),
        '/bottom': (context) => AlignmentBottomPage(),
        '/flex': (context) => FlexColumnWidthPage(),
        '/fraction': (context) => FractionColumnWidthPage(),
        '/fixed': (context) => FixedColumnWidthPage(),
        '/column=1_width=.2': (context) => Column1Widthdot2Page(),
        '/border': (context) => BorderPage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Table'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(context, 'Table', '/table'),
            _buildList(context, 'Alignment (Middle)', '/middle'),
            _buildList(context, 'Alignment (Bottom)', '/bottom'),
            _buildList(context, 'FlexColumnWidth = 1.0', '/flex'),
            _buildList(context, 'FractionColumnWidth = .25', '/fraction'),
            _buildList(context, 'FixedColumnWidth = 30.0', '/fixed'),
            _buildList(context, 'Column = 1, Width = .2', '/column=1_width=.2'),
            _buildList(context, 'Border', '/border'),
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
