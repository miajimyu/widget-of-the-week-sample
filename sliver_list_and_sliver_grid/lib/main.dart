import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (BuildContext context) => MyHomePage(),
        '/sliver_list': (BuildContext context) => SliverChildListDelegatePage(),
        '/sliver_builder': (BuildContext context) =>
            SliverChildBuilderDelegatePage(),
        '/sliver_grid_count': (BuildContext context) => SliverGridCountPage(),
        '/sliver_grid_extent': (BuildContext context) => SliverGridExtentPage(),
        '/sliver_grid_sample': (BuildContext context) => SliverGridSamplePage(),
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliverList & SliverGrid'),
      ),
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            _buildList(
                context, 'SliverList SliverChildListDelegate', '/sliver_list'),
            _buildList(context, 'SliverList SliverChildBuilderDelegate',
                '/sliver_builder'),
            _buildList(context, 'SliverGrid.count()', '/sliver_grid_count'),
            _buildList(context, 'SliverGrid.extent()', '/sliver_grid_extent'),
            _buildList(context, 'SliverGrid Sample', '/sliver_grid_sample'),
          ],
        ),
      ),
    );
  }

  Widget _buildList(BuildContext context, String title, String routeName) {
    return Card(
      child: ListTile(
        title: Text(title),
        onTap: () {
          Navigator.pushNamed(context, routeName);
        },
        trailing: Icon(Icons.chevron_right),
      ),
    );
  }
}

class SliverChildListDelegatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliverChildListDelegate'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate: SliverChildListDelegate([
              for (var i = 0; i < 6; i++)
                Container(
                  height: 150.0,
                  color: i % 2 == 0 ? Colors.white : Colors.grey[300],
                  child: Center(
                    child: Text('$i', style: TextStyle(fontSize: 50)),
                  ),
                ),
            ]),
          ),
        ],
      ),
    );
  }
}

class SliverChildBuilderDelegatePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliverChildBuilderDelegate'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverList(
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                height: 150.0,
                color: index % 2 == 0 ? Colors.white : Colors.grey[300],
                child: Center(
                  child: Text('$index', style: TextStyle(fontSize: 50)),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

class SliverGridCountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliverGrid.count()'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverGrid.count(
            crossAxisCount: 4,
            children: <Widget>[
              Container(color: Colors.red, height: 150.0),
              Container(color: Colors.green, height: 150.0),
              Container(color: Colors.yellow, height: 150.0),
              Container(color: Colors.red, height: 150.0),
              Container(color: Colors.green, height: 150.0),
              Container(color: Colors.yellow, height: 150.0),
              Container(color: Colors.red, height: 150.0),
              Container(color: Colors.green, height: 150.0),
              Container(color: Colors.yellow, height: 150.0),
              Container(color: Colors.red, height: 150.0),
              Container(color: Colors.green, height: 150.0),
              Container(color: Colors.yellow, height: 150.0),
            ],
          )
        ],
      ),
    );
  }
}

class SliverGridExtentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliverGrid.extent()'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverGrid.extent(
            maxCrossAxisExtent: 90.0,
            children: <Widget>[
              Container(color: Colors.red, height: 150.0),
              Container(color: Colors.green, height: 150.0),
              Container(color: Colors.yellow, height: 150.0),
              Container(color: Colors.red, height: 150.0),
              Container(color: Colors.green, height: 150.0),
              Container(color: Colors.yellow, height: 150.0),
              Container(color: Colors.red, height: 150.0),
              Container(color: Colors.green, height: 150.0),
              Container(color: Colors.yellow, height: 150.0),
              Container(color: Colors.red, height: 150.0),
              Container(color: Colors.green, height: 150.0),
              Container(color: Colors.yellow, height: 150.0),
            ],
          )
        ],
      ),
    );
  }
}

class SliverGridSamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SliverGrid Sample'),
      ),
      body: CustomScrollView(
        slivers: [
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200.0,
              mainAxisSpacing: 10.0,
              crossAxisSpacing: 10.0,
              childAspectRatio: 4.0,
            ),
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  alignment: Alignment.center,
                  color: Colors.teal[100 * (index % 9)],
                  child: Text('grid item $index'),
                );
              },
              childCount: 20,
            ),
          ),
        ],
      ),
    );
  }
}
