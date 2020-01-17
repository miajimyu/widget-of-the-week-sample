import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

// https://flutter.dev/docs/cookbook/images/fading-in-images

class MemoryNetworkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const title = 'FadeInImage.memoryNetwork()';

    return Scaffold(
      appBar: AppBar(
        title: const Text(title),
      ),
      body: Stack(
        children: <Widget>[
          const Center(child: CircularProgressIndicator()),
          Center(
            child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image: 'https://picsum.photos/250?image=9',
            ),
          ),
        ],
      ),
    );
  }
}
