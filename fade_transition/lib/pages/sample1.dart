import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MyFadeIn(
      child: Center(
        child: FlutterLogo(
          size: 300,
        ),
      ),
    );
  }
}

class MyFadeIn extends StatefulWidget {
  const MyFadeIn({@required this.child});

  final Widget child;

  @override
  _MyFadeInState createState() => _MyFadeInState();
}

class _MyFadeInState extends State<MyFadeIn>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;
  Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );
    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_controller);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _controller.forward();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Start the fade'),
      ),
      body: FadeTransition(
        opacity: _animation,
        child: widget.child,
      ),
    );
  }
}
