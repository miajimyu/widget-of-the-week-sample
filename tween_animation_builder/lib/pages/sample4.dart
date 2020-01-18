import 'package:flutter/material.dart';

class Sample4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample4 Add child parameter'),
      ),
      body: Center(
        child: TweenAnimationBuilder<Color>(
          duration: const Duration(seconds: 3),
          tween: ColorTween(
            begin: Colors.white,
            end: Colors.orange,
          ),
          child: const FlutterLogo(size: 300),
          builder: (_, value, child) {
            return ColorFiltered(
              child: child,
              colorFilter: ColorFilter.mode(value, BlendMode.modulate),
            );
          },
        ),
      ),
    );
  }
}
