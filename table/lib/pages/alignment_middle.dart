import 'package:flutter/material.dart';
import 'package:table/widgets/container.dart';

class AlignmentMiddlePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alignment (Middle)'),
      ),
      body: Table(
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
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
