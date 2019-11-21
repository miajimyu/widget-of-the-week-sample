import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample1'),
      ),
      body: DraggableScrollableSheet(
        initialChildSize: 0.3,
        minChildSize: 0.3,
        maxChildSize: 0.6,
        builder: (context, scrollController) {
          return SingleChildScrollView(
            controller: scrollController,
            child: FractionallySizedBox(
              widthFactor: 0.8,
              child: Container(
                color: Colors.amber,
                child: Column(
                  children: <Widget>[
                    FlutterLogo(
                      size: 200,
                    ),
                    for (var i = 0; i < 10; i++)
                      Text('Flutter',
                          style: Theme.of(context).textTheme.display1),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
