import 'package:flutter/material.dart';

class Sample5Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample5 showEditIcon: true'),
      ),
      body: DataTable(
        columns: [
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('Year')),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text('Dash'), showEditIcon: true),
            DataCell(Text('2018')),
          ]),
          DataRow(cells: [
            DataCell(Text('Gopher')),
            DataCell(Text('2009')),
          ]),
        ],
      ),
    );
  }
}
