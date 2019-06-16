import 'package:flutter/material.dart';
import 'package:table/widgets/container.dart';

class FixedColumnWidthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FixedColumnWidth = 30.0'),
      ),
      body: Table(
        defaultColumnWidth: FixedColumnWidth(30.0),
        children: [
          TableRow(children: [
            wideWidget(),
            mediumWidget(),
            mediumWidget(),
          ]),
          TableRow(children: [
            mediumWidget(),
            narrowWidget(),
            mediumWidget(),
          ]),
        ],
      ),
    );
  }
}
