import 'package:flutter/material.dart';

class Sample4Page extends StatelessWidget {
  Widget myBox({
    Color color = Colors.grey,
    double width = 100,
    double height = 100,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
        color: color,
      ),
      width: width,
      height: height,
    );
  }

  @override
  Widget build(BuildContext context) {
    var myGrayBox = myBox(color: Colors.grey, width: 180, height: 180);
    var myRedBox = myBox(color: Colors.red, width: 160, height: 160);
    var myGreenBox = myBox(color: Colors.green, width: 140, height: 140);
    var myBlueBox = myBox(color: Colors.blue, width: 120, height: 120);
    var myYellowBox = myBox(color: Colors.yellow, width: 100, height: 100);

    return Scaffold(
      appBar: AppBar(
        title: Text('Sample4 Overflow.visible'),
      ),
      body: Stack(
        children: <Widget>[
          myGrayBox,
          myRedBox,
          Positioned(
            bottom: -50,
            right: -50,
            child: myGreenBox,
          ),
          myBlueBox,
          myYellowBox,
        ],
        overflow: Overflow.visible,
      ),
    );
  }
}
