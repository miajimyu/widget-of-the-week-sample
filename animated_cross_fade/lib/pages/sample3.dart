import 'package:flutter/material.dart';

class Sample3Page extends StatefulWidget {
  @override
  _Sample3PageState createState() => _Sample3PageState();
}

class _Sample3PageState extends State<Sample3Page> {
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
        title: const Text('Sample3 layoutBuilder'),
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
                duration: const Duration(milliseconds: 200),
                firstChild: hello,
                secondChild: goodbye,
                layoutBuilder: (
                  Widget topChild,
                  Key topChildKey,
                  Widget bottomChild,
                  Key bottomChildKey,
                ) {
                  return Stack(
                    overflow: Overflow.visible,
                    alignment: Alignment.center,
                    children: <Widget>[
                      Positioned(
                        key: bottomChildKey,
                        top: 0,
                        child: bottomChild,
                      ),
                      Positioned(
                        key: topChildKey,
                        child: topChild,
                      ),
                    ],
                  );
                },
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
      width: 250,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: Colors.lightBlue,
      ),
    );
  }
}
