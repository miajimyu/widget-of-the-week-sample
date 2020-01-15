import 'package:flutter/material.dart';

class Sample4Page extends StatefulWidget {
  @override
  _Sample4PageState createState() => _Sample4PageState();
}

class _Sample4PageState extends State<Sample4Page> {
  bool shouldWelcomUser = true;

  final Hello hello = Hello();
  final Goodbye goodbye = Goodbye();
  final Container lightBlueBox = Container(
    width: 300,
    height: 100,
    decoration: BoxDecoration(
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      color: Colors.lightBlue[100],
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample4 Curve'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20),
            lightBlueBox,
            const SizedBox(height: 20),
            GestureDetector(
              child: AnimatedCrossFade(
                crossFadeState: shouldWelcomUser
                    ? CrossFadeState.showFirst
                    : CrossFadeState.showSecond,
                duration: const Duration(seconds: 1),
                firstCurve: Curves.easeOut,
                secondCurve: Curves.easeIn,
                sizeCurve: Curves.bounceOut,
                firstChild: hello,
                secondChild: goodbye,
              ),
              onTap: () => setState(() => shouldWelcomUser = !shouldWelcomUser),
            ),
            const SizedBox(height: 20),
            lightBlueBox,
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}

class Hello extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'HELLO',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
          ),
        ),
      ),
      width: 300,
      height: 300,
      decoration: BoxDecoration(
        color: Colors.blue,
        shape: BoxShape.circle,
      ),
    );
  }
}

class Goodbye extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'GOODBYE',
          style: TextStyle(
            color: Colors.white,
            fontSize: 40,
          ),
        ),
      ),
      width: 300,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: Colors.lightBlue,
      ),
    );
  }
}
