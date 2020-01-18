import 'package:flutter/material.dart';
import 'package:table/widgets/container.dart';

class FlexColumnWidthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FlexColumnWidth = 1.0'),
      ),
      body: Table(
        defaultColumnWidth: const FlexColumnWidth(1),
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
