import 'package:flutter/material.dart';

class Sample1Page extends StatefulWidget {
  @override
  _Sample1PageState createState() => _Sample1PageState();
}

class _Sample1PageState extends State<Sample1Page> {
  var myItems = ["1", "2", "3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample1'),
      ),
      body: Center(
          child: ReorderableListView(
        onReorder: (oldIndex, newIndex) {
          setState(() {
            _updateMyItems(oldIndex, newIndex);
          });
        },
        header: Text(
          'This is the header!',
          style: Theme.of(context).textTheme.display1,
        ),
        children: <Widget>[
          for (final item in myItems)
            ListTile(
              key: ValueKey(item),
              title: Text(
                'Item #$item',
                style: Theme.of(context).textTheme.display1,
              ),
            )
        ],
      )),
    );
  }

  void _updateMyItems(int oldIndex, int newIndex) {
    var _index = oldIndex < newIndex ? newIndex - 1 : newIndex;
    var _item = myItems[oldIndex];
    myItems.remove(_item);
    myItems.insert(_index, _item);
    print("$myItems, insertAt: $_index, item: $_item");
  }
}
