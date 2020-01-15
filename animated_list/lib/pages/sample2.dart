import 'package:flutter/material.dart';

class Sample2Page extends StatefulWidget {
  @override
  _Sample2PageState createState() => _Sample2PageState();
}

class _Sample2PageState extends State<Sample2Page> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final List<String> _data = <String>['Item 1', 'Item 2', 'Item 3'];
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
        title: const Text('Sample2 Build with transition'),
      ),
      body: AnimatedList(
        key: _listKey,
        initialItemCount: _dataCount,
        itemBuilder:
            (BuildContext context, int index, Animation<double> animation) {
          return _buildItemWithTransition(_data[index], animation, index);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.playlist_add),
        onPressed: () => _insertItem(),
      ),
    );
  }

  Widget _buildItemWithTransition(
      String item, Animation<double> animation, int index) {
    return FadeTransition(
      opacity: animation,
      child: Card(
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
      ),
    );
  }

  void _insertItem() {
    final int index = _data.length ?? 0;

    _dataCount++;
    _data.insert(index, 'Item $_dataCount');

    _listKey.currentState.insertItem(index);
  }

  void _removeItem(int index) {
    final String removedItem = _data.removeAt(index);
    _listKey.currentState.removeItem(
      index,
      (BuildContext context, Animation<double> animation) {
        return _buildItemWithTransition(removedItem, animation, index);
      },
    );
  }
}
