import 'package:flutter/material.dart';

class Sample4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample4 selected: true'),
      ),
      body: DataTable(
        columns: const <DataColumn>[
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('Year')),
        ],
        rows: const <DataRow>[
          DataRow(
            cells: [
              DataCell(Text('Dash')),
              DataCell(Text('2018')),
            ],
          ),
          DataRow(
            selected: true,
            cells: [
              DataCell(Text('Gopher')),
              DataCell(Text('2009')),
            ],
          ),
        ],
      ),
    );
  }
}
