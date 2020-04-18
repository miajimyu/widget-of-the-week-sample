import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Sample2Page extends StatefulWidget {
  static const String id = 'sample2';
  static const String title = 'Sample2';

  @override
  _Sample2PageState createState() => _Sample2PageState();
}

class _Sample2PageState extends State<Sample2Page> {
  Future<String> _fetchMyData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Sample2Page.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            FutureBuilder<String>(
              future: _fetchMyData,
              builder: (_, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.none:
                    return Icon(Icons.get_app);
                    break;
                  case ConnectionState.waiting:
                    return const CupertinoActivityIndicator();
                    break;
                  default:
                    return Column(
                      children: [
                        Text('Result: ${snapshot.data}'),
                        Icon(
                          Icons.check_circle_outline,
                          size: 100,
                        ),
                      ],
                    );
                }
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _fetchMyData = _getMyData();
          });
        },
        child: Icon(Icons.get_app),
      ),
    );
  }
}

Future<String> _getMyData() async {
  await Future<String>.delayed(
    const Duration(seconds: 1),
  );
  return 'Data loaded';
}
