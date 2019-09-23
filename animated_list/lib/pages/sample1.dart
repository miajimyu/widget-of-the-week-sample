import 'package:flutter/material.dart';

class Sample1Page extends StatefulWidget {
  @override
  _Sample1PageState createState() => _Sample1PageState();
}

class _Sample1PageState extends State<Sample1Page> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  List<String> _data = ['Item 1', 'Item 2', 'Item 3'];
  int _dataCount;

  @override
  void initState() {
    super.initState();
    _dataCount = _data.length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample1'),
      ),
      body: AnimatedList(
        key: _listKey,
        initialItemCount: _dataCount,
        itemBuilder: (context, index, animation) {
          return SizeTransition(
            sizeFactor: animation,
            child: _buildItem(_data[index], index),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.playlist_add),
        onPressed: () => _insertItem(),
      ),
    );
  }

  Widget _buildItem(String item, int index) {
    return Card(
      child: ListTile(
        title: Text(item),
        trailing: IconButton(
          icon: Icon(
            Icons.remove_circle,
            color: Colors.red,
          ),
          onPressed: () => _removeItem(index),
        ),
      ),
    );
  }

  void _insertItem() {
    int index = _data.length > 0 ? _data.length : 0;

    _dataCount++;
    _data.insert(index, "Item $_dataCount");

    _listKey.currentState.insertItem(index);
  }

  void _removeItem(int index) {
    String removedItem = _data.removeAt(index);
    _listKey.currentState.removeItem(
      index,
      (context, animation) {
        return SizeTransition(
          sizeFactor: animation,
          child: _buildItem(removedItem, index),
        );
      },
    );
  }
}
