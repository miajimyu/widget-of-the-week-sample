import 'package:flutter/material.dart';
import 'package:table/widgets/container.dart';

class FractionColumnWidthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('FractionColumnWidth = .25'),
      ),
      body: Table(
        defaultColumnWidth: FractionColumnWidth(.25),
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
