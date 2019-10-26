import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample2 Index & Ascending'),
      ),
      body: DataTable(
        sortColumnIndex: 0,
        sortAscending: true,
        columns: [
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('Year')),
        ],
        rows: [
          DataRow(cells: [
            DataCell(Text('Dash')),
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
