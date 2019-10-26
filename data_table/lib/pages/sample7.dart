import 'package:flutter/material.dart';

class Sample7Page extends StatefulWidget {
  @override
  _Sample7PageState createState() => _Sample7PageState();
}

class _Sample7PageState extends State<Sample7Page> {
  int sortColumnIndex;
  bool isSortAscending;

  @override
  void initState() {
    sortColumnIndex = 0;
    isSortAscending = true;
    sortColumn(sortColumnIndex, isSortAscending);
    super.initState();
  }

  Widget _buildContainer({Color color = Colors.white}) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 1),
      width: 20,
      height: 30,
      decoration: BoxDecoration(
        border: color == Colors.white ? Border.all() : null,
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        color: color,
      ),
    );
  }

  void sortColumn(int columnIndex, bool ascending) {
    if (columnIndex == 0) {
      if (ascending) {
        items.sort((a, b) => a.name.compareTo(b.name));
      } else {
        items.sort((a, b) => b.name.compareTo(a.name));
      }
    } else if (columnIndex == 2) {
      if (ascending) {
        items.sort((a, b) => a.year - b.year);
      } else {
        items.sort((a, b) => b.year - a.year);
      }
    } else if (columnIndex == 3) {
      if (ascending) {
        items.sort((a, b) => a.lang.compareTo(b.lang));
      } else {
        items.sort((a, b) => b.lang.compareTo(a.lang));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text('Sample7'),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: DataTable(
            sortColumnIndex: sortColumnIndex,
            sortAscending: isSortAscending,
            columns: [
              DataColumn(
                label: Text('Name'),
                onSort: (columnIndex, ascending) {
                  setState(() {
                    sortColumnIndex = columnIndex;
                    isSortAscending = ascending;
                  });
                  sortColumn(columnIndex, ascending);
                },
              ),
              DataColumn(label: _buildContainer(color: Colors.grey)),
              DataColumn(
                label: Text('Year'),
                numeric: true,
                onSort: (columnIndex, ascending) {
                  setState(() {
                    sortColumnIndex = columnIndex;
                    isSortAscending = ascending;
                  });
                  sortColumn(columnIndex, ascending);
                },
              ),
              DataColumn(
                label: Text('Lang.'),
                onSort: (columnIndex, ascending) {
                  setState(() {
                    sortColumnIndex = columnIndex;
                    isSortAscending = ascending;
                  });
                  sortColumn(columnIndex, ascending);
                },
              ),
              DataColumn(label: Text('Favorite')),
            ],
            rows: items
                .map((item) => DataRow(cells: [
                      DataCell(Text(item.name)),
                      DataCell(
                        Row(
                          children: item.colors
                              .map((color) => _buildContainer(color: color))
                              .toList(),
                        ),
                      ),
                      DataCell(Text(item.year.toString())),
                      DataCell(Text(item.lang)),
                      DataCell(
                        item.favorite
                            ? Icon(Icons.favorite)
                            : Icon(Icons.favorite_border),
                        onTap: () => setState(() {
                          item.favorite = !item.favorite;
                        }),
                      ),
                    ]))
                .toList(),
          ),
        ),
      ),
    );
  }
}

class ItemInfo {
  String name;
  List<Color> colors;
  int year;
  String lang;
  bool favorite;

  ItemInfo({
    this.name,
    this.colors,
    this.year,
    this.lang,
    this.favorite,
  });
}

var items = <ItemInfo>[
  ItemInfo(
    name: 'Duke',
    colors: [Colors.black, Colors.white, Colors.red],
    year: 1992,
    lang: 'Java',
    favorite: false,
  ),
  ItemInfo(
    name: 'ElePHPant',
    colors: [Colors.lightBlue],
    year: 1998,
    lang: 'PHP',
    favorite: false,
  ),
  ItemInfo(
    name: 'Gopher',
    colors: [Colors.black, Colors.white],
    year: 2009,
    lang: 'Go',
    favorite: false,
  ),
  ItemInfo(
    name: 'Ferris',
    colors: [Colors.orange],
    year: 2015,
    lang: 'Rust',
    favorite: false,
  ),
  ItemInfo(
    name: 'Dash',
    colors: [Colors.lightBlue],
    year: 2018,
    lang: 'Dart',
    favorite: false,
  ),
];
