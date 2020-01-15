import 'package:flutter/material.dart';

class Sample3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample3 onEnd'),
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
              child: const FlutterLogo(size: 300),
              colorFilter: ColorFilter.mode(value, BlendMode.modulate),
            );
          },
          onEnd: () => print('all done!'),
        ),
      ),
    );
  }
}
