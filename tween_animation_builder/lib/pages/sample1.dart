import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample1'),
      ),
      body: Center(
        child: TweenAnimationBuilder<Color>(
          duration: const Duration(seconds: 3),
          tween: ColorTween(
            begin: Colors.white,
            end: Colors.orange,
          ),
          builder: (BuildContext _, Color value, Widget __) {
            return ColorFiltered(
              child: FlutterLogo(size: 300),
              colorFilter: ColorFilter.mode(value, BlendMode.modulate),
            );
          },
        ),
      ),
    );
  }
}