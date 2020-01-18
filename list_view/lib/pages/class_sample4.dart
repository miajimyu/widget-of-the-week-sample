import 'package:flutter/material.dart';

class ClassSample4Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ClassSample4 CustomScrollView'),
      ),
      body: Column(
        children: <Widget>[
          ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20),
            children: const <Widget>[
              Text('I\'m dedicating every day to you'),
              Text('Domestic life was never quite my style'),
              Text('When you smile, you knock me out, I fall apart'),
              Text('And I thought I was so smart'),
            ],
          ),
          CustomScrollView(
            shrinkWrap: true,
            slivers: <Widget>[
              SliverPadding(
                padding: const EdgeInsets.all(20),
                sliver: SliverList(
                  delegate: SliverChildListDelegate(
                    const <Widget>[
                      Text('I\'m dedicating every day to you'),
                      Text('Domestic life was never quite my style'),
                      Text('When you smile, you knock me out, I fall apart'),
                      Text('And I thought I was so smart'),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
