import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  Widget _buildList() {
    return ListView(
      children: List.generate(
        10,
        (i) => Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            color: Colors.indigo,
          ),
          height: 50,
          margin: const EdgeInsets.all(3),
        ),
      ),
    );
  }

  Widget _buildContainer() {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5)),
          color: Colors.blue,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    const oneColumnLayout = 500;
    final screenSize = MediaQuery.of(context).size;
    Widget widget;

    if (screenSize.width > oneColumnLayout) {
      widget = Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Flexible(
            child: _buildList(),
          ),
          Flexible(
            child: _buildContainer(),
          ),
        ],
      );
    } else {
      widget = _buildList();
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Sample1 $screenSize'),
      ),
      body: widget,
    );
  }
}
