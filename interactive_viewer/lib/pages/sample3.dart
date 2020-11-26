import 'package:flutter/material.dart';

class Sample3Page extends StatefulWidget {
  static const String id = 'sample3';
  static const String title = 'Sample3 properties';

  @override
  _Sample3PageState createState() => _Sample3PageState();
}

class _Sample3PageState extends State<Sample3Page> {
  final _controller = TransformationController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(Sample3Page.title),
      ),
      body: Center(
        child: InteractiveViewer(
          constrained: false,
          // Point to check =>
          scaleEnabled: false,
          boundaryMargin: const EdgeInsets.all(42),
          onInteractionStart: (detail) {
            print(detail);
            setState(() {
              _controller.value = Matrix4.diagonal3Values(1.5, 1.5, 1.5);
            });
          },
          onInteractionEnd: (detail) {
            print(detail);
            setState(() {
              _controller.value = Matrix4.identity();
            });
          },
          transformationController: _controller,
          // <= Point to check
          child: Image.asset('images/kirin-400x400.png'),
        ),
      ),
    );
  }
}
