import 'package:flutter/material.dart';
import 'package:table/widgets/container.dart';

class BorderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Border'),
      ),
      body: Table(
        border: TableBorder.all(),
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
