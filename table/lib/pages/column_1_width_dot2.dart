import 'package:flutter/material.dart';
import 'package:table/widgets/container.dart';

class Column1Widthdot2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Column = 1, Width = .2'),
      ),
      body: Table(
        columnWidths: const {
          1: FractionColumnWidth(.2),
        },
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
