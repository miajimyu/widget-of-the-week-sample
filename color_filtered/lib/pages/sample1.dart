import 'package:flutter/material.dart';

class Sample1Page extends StatefulWidget {
  @override
  _Sample1PageState createState() => _Sample1PageState();
}

class _Sample1PageState extends State<Sample1Page> {
  List<bool> isSelected = <bool>[false, false, true];
  MaterialColor _color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            ColorFiltered(
              colorFilter: ColorFilter.mode(
                _color,
                BlendMode.modulate,
              ),
              child: Image.asset('images/kirin.png'),
            ),
            ToggleButtons(
              children: const <Widget>[
                Text('Amber'),
                Text('Blue'),
                Text('Green'),
              ],
              onPressed: (int index) {
                setState(() {
                  for (int buttonIndex = 0;
                      buttonIndex < isSelected.length;
                      buttonIndex++) {
                    if (buttonIndex == index) {
                      isSelected[buttonIndex] = true;
                    } else {
                      isSelected[buttonIndex] = false;
                    }
                  }

                  if (index == 0) {
                    _color = Colors.amber;
                  } else if (index == 1) {
                    _color = Colors.blue;
                  } else {
                    _color = Colors.green;
                  }
                });
              },
              isSelected: isSelected,
            ),
          ],
        ),
      ),
    );
  }
}
