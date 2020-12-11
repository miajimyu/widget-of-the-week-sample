import 'package:flutter/material.dart';

class Sample2Page extends StatefulWidget {
  static const String id = 'sample2';
  static const String title = 'Sample2 AxisSpace';

  @override
  _Sample2PageState createState() => _Sample2PageState();
}

class _Sample2PageState extends State<Sample2Page> {
  double mainAxisSpace = 20;
  double crossAxisSpace = 0;

  @override
  Widget build(BuildContext context) {
    final title = mainAxisSpace != 0 ? 'mainAxisSpace' : 'crossAxisSpace';

    return Scaffold(
      appBar: AppBar(
        title: Text('Sample2 $title'),
        actions: const [
          Icon(Icons.wifi),
          Icon(Icons.battery_full),
        ],
      ),
      body: GridView.count(
        mainAxisSpacing: mainAxisSpace,
        crossAxisSpacing: crossAxisSpace,
        crossAxisCount: 4,
        children: [
          Container(color: Colors.red, height: 150),
          Container(color: Colors.green, height: 150),
          Container(color: Colors.yellow, height: 150),
          Container(color: Colors.red, height: 150),
          Container(color: Colors.green, height: 150),
          Container(color: Colors.yellow, height: 150),
          Container(color: Colors.red, height: 150),
          Container(color: Colors.green, height: 150),
          Container(color: Colors.yellow, height: 150),
          Container(color: Colors.red, height: 150),
          Container(color: Colors.green, height: 150),
          Container(color: Colors.yellow, height: 150),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (mainAxisSpace == 0) {
            mainAxisSpace = 20.0;
            crossAxisSpace = 0.0;
          } else {
            mainAxisSpace = 0.0;
            crossAxisSpace = 20.0;
          }
          setState(() {});
        },
        child: const Icon(Icons.autorenew),
      ),
    );
  }
}
