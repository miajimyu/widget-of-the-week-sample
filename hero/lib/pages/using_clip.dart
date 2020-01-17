import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UsingClipPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Using clip'),
      ),
      backgroundColor: Colors.grey,
      body: Container(
        alignment: Alignment.bottomCenter,
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/clip_detail');
          },
          child: ClipOval(
            child: Hero(
              tag: 'kirin',
              child: Container(
                child: Image.asset('images/kirin.png'),
                height: 100,
              ),
            ),
          ),
        ),
        margin: const EdgeInsets.all(10),
      ),
    );
  }
}

class UsingClipDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detail'),
      ),
      backgroundColor: Colors.grey,
      body: Center(
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Hero(
            tag: 'kirin',
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                child: Image.asset('images/kirin.png'),
                height: 300,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
