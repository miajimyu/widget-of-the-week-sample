import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1'),
      ),
      body: DataTable(
        columns: const <DataColumn>[
          DataColumn(label: Text('Name')),
          DataColumn(label: Text('Year')),
        ],
        rows: const <DataRow>[
          DataRow(cells: <DataCell>[
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
