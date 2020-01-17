import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class Sample3Page extends StatefulWidget {
  @override
  _Sample3PageState createState() => _Sample3PageState();
}

class _Sample3PageState extends State<Sample3Page> {
  File imageFile;

  Future<void> _getImageFile(ImageSource source) async {
    final file = await ImagePicker.pickImage(source: source);

    setState(() {
      imageFile = file;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample3 Image.file()'),
      ),
      body: Center(
        child:
            imageFile == null ? const Text('No Image') : Image.file(imageFile),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera),
        onPressed: () => _getImageFile(ImageSource.camera),
      ),
    );
  }
}
