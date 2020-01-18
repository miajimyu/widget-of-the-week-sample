import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  Widget myBox({
    Color color = Colors.grey,
    double width = 100,
    double height = 100,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(5)),
        color: color,
      ),
      width: width,
      height: height,
    );
  }

  @override
  Widget build(BuildContext context) {
    final myGrayBox = myBox(color: Colors.grey, width: 180, height: 180);
    final myRedBox = myBox(color: Colors.red, width: 160, height: 160);
    final myGreenBox = myBox(color: Colors.green, width: 140, height: 140);
    final myBlueBox = myBox(color: Colors.blue, width: 120, height: 120);
    final myYellowBox = myBox(color: Colors.yellow, width: 100, height: 100);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1'),
      ),
      body: Stack(
        children: <Widget>[
          myGrayBox,
          myRedBox,
          myGreenBox,
          myBlueBox,
          myYellowBox,
        ],
      ),
    );
  }
}
