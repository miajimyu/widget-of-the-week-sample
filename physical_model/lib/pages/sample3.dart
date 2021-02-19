import 'package:flutter/material.dart';

class Sample3Page extends StatefulWidget {
  static const String id = 'sample3';
  static const String title = 'Sample3';

  @override
  _Sample3PageState createState() => _Sample3PageState();
}

class _Sample3PageState extends State<Sample3Page> {
  double opacity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample3 shape'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(flex: 2),
          PhysicalModel(
            child: BlueBox(color: Colors.blue, opacity: opacity),
            color: Colors.black,
            shadowColor: Colors.pink,
            elevation: 8,
            shape: BoxShape.circle,
          ),
          Spacer(flex: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Opacity:'),
              Slider(
                value: opacity,
                onChanged: (value) => setState(() => {opacity = value}),
              ),
            ],
          ),
          Spacer(flex: 2),
        ],
      ),
    );
  }
}

class BlueBox extends StatelessWidget {
  final Color color;
  final double opacity;

  BlueBox({this.color, this.opacity});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      color: color.withOpacity(opacity),
    );
  }
}
