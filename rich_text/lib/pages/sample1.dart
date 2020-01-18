import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1'),
      ),
      body: Center(
        child: RichText(
          text: TextSpan(
            style: Theme.of(context).textTheme.display1,
            children: const <TextSpan>[
              TextSpan(text: "It's "),
              TextSpan(
                  text: 'all', style: TextStyle(fontWeight: FontWeight.bold)),
              TextSpan(text: ' widget'),
            ],
          ),
        ),
      ),
    );
  }
}
