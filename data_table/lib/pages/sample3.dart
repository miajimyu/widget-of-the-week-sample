import 'package:flutter/material.dart';

class Sample3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample3 numeric: true'),
      ),
      body: DataTable(
        columns: const <DataColumn>[
          DataColumn(label: Text('Name')),
          DataColumn(
            label: Text('Year'),
            numeric: true,
          ),
        ],
        rows: const <DataRow>[
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
