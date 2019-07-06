import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  Widget _buildList() {
    return ListView(
      children: List.generate(
        10,
        (i) => Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                color: Colors.indigo,
              ),
              height: 50,
              margin: EdgeInsets.all(3),
            ),
      ),
    );
  }

  Widget _buildContainer() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(5.0)),
          color: Colors.blue,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var oneColumnLayout = 500;
    var screenSize = MediaQuery.of(context).size;
    var widget;
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
