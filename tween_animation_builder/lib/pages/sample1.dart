import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1'),
      ),
      body: Center(
        child: TweenAnimationBuilder<Color>(
          duration: const Duration(seconds: 3),
          tween: ColorTween(
            begin: Colors.white,
            end: Colors.orange,
          ),
          builder: (_, value, __) {
            return ColorFiltered(
              child: const FlutterLogo(size: 300),
              colorFilter: ColorFilter.mode(value, BlendMode.modulate),
            );
          },
        ),
      ),
    );
  }
}
