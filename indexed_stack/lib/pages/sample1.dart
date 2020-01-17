import 'package:flutter/material.dart';

class Sample1Page extends StatefulWidget {
  @override
  _Sample1PageState createState() => _Sample1PageState();
}

class _Sample1PageState extends State<Sample1Page> {
  var _widgetIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1'),
      ),
      body: IndexedStack(
        index: _widgetIndex,
        children: <Widget>[
          WidgetOne(),
          WidgetTwo(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_1),
            title: Text('One'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.filter_2),
            title: Text('Two'),
          ),
        ],
        currentIndex: _widgetIndex,
        selectedItemColor: Colors.amber[800],
        onTap: (index) {
          setState(() {
            _widgetIndex = index;
          });
        },
      ),
    );
  }
}

class WidgetOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: FlutterLogo(
        size: 200,
      ),
    );
  }
}

class WidgetTwo extends StatefulWidget {
  @override
  _WidgetTwoState createState() => _WidgetTwoState();
}

class _WidgetTwoState extends State<WidgetTwo> {
  var _count = 0;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        height: MediaQuery.of(context).size.width / 2,
        decoration: BoxDecoration(
            color: Colors.lightBlue[300],
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '$_count',
              style: TextStyle(
                fontSize: 100,
                color: Colors.white,
              ),
            ),
            RaisedButton(
              color: Colors.blue,
              child: Text(
                'COUNT',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                setState(() {
                  _count++;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
