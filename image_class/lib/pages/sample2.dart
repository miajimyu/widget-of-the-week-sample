import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample2 Image.network()'),
      ),
      body: Center(
        child: Image.network(
          'https://picsum.photos/250?image=9',
          loadingBuilder: (context, child, progress) {
            return progress == null
                ? child
                : LinearProgressIndicator(
                    value: progress.cumulativeBytesLoaded /
                        progress.expectedTotalBytes);
          },
        ),
      ),
    );
  }
}
