import 'package:flutter/material.dart';

class Sample6Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample6 placeholder: true'),
      ),
      body: DataTable(
        columns: const <DataColumn>[
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('Year')),
        ],
        rows: const <DataRow>[
          DataRow(cells: [
            DataCell(
              Text('Fill in name'),
              placeholder: true,
            ),
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
