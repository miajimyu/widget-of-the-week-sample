import 'package:flutter/material.dart';

class Sample3Page extends StatefulWidget {
  @override
  _Sample3PageState createState() => _Sample3PageState();
}

class _Sample3PageState extends State<Sample3Page> {
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
        title: Text('Sample3 Fade&ScaleTransition'),
      ),
      body: AnimatedList(
        key: _listKey,
        initialItemCount: _dataCount,
        itemBuilder: (context, index, animation) {
          return FadeTransition(
            opacity: animation,
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
        return ScaleTransition(
          scale: animation,
          child: _buildItem(removedItem, index),
        );
      },
    );
  }
}
