import 'package:flutter/material.dart';

class ClassSample1Page extends StatefulWidget {
  @override
  _ClassSample1PageState createState() => _ClassSample1PageState();
}

class _ClassSample1PageState extends State<ClassSample1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Class Sample1'),
      ),
      body: Center(
        child: LogoFade(),
      ),
    );
  }
}

class LogoFade extends StatefulWidget {
  @override
  _LogoFadeState createState() => _LogoFadeState();
}

class _LogoFadeState extends State<LogoFade> {
  double opacityLevel = 1;

  void _changeOpacity() {
    setState(() => opacityLevel = opacityLevel == 0 ? 1.0 : 0.0);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        AnimatedOpacity(
          opacity: opacityLevel,
          duration: const Duration(seconds: 3),
          child: const FlutterLogo(),
        ),
        RaisedButton(
          child: const Text('Fade Logo'),
          onPressed: _changeOpacity,
        ),
      ],
    );
  }
}
