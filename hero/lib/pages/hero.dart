import 'package:flutter/material.dart';

class HeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero'),
      ),
      body: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, '/hero_detail');
        },
        child: Column(
          children: <Widget>[
            Hero(
              tag: 'kirin',
              child: Container(
                child: Image.asset('images/kirin.png'),
                height: 100,
              ),
            ),
            const Text('kirin'),
          ],
        ),
      ),
    );
  }
}

class HeroDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      body: Column(
        children: <Widget>[
          Hero(
            tag: 'kirin',
            child: Image.asset('images/kirin.png'),
          ),
          Text(
            'kirin is giraffe',
            style: Theme.of(context).textTheme.display1,
          ),
        ],
      ),
    );
  }
}
