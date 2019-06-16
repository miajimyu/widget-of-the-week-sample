import 'package:flutter/material.dart';
import 'package:table/widgets/container.dart';

class FlexColumnWidthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FlexColumnWidth = 1.0'),
      ),
      body: Table(
        defaultColumnWidth: FlexColumnWidth(1.0),
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
