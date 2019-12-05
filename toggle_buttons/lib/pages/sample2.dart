import 'package:flutter/material.dart';

class Sample2Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample2'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Spacer(flex: 2),
            Text('allow for multiple selection (>=0)'),
            ToggleButton1(),
            Spacer(),
            Text('mutually exclusive selection (>=1)'),
            ToggleButton2(),
            Spacer(),
            Text('mutually exclusive selection (>=0)'),
            ToggleButton3(),
            Spacer(),
            Text('allow for multiple selection (>=1)'),
            ToggleButton4(),
            Spacer(flex: 2),
          ],
        ),
      ),
    );
  }
}

class ToggleButton1 extends StatefulWidget {
  @override
  _ToggleButton1State createState() => _ToggleButton1State();
}

class _ToggleButton1State extends State<ToggleButton1> {
  List<bool> isSelected = List.generate(3, (_) => false);

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      children: <Widget>[
        Icon(Icons.ac_unit),
        Icon(Icons.call),
        Icon(Icons.cake),
      ],
      onPressed: (int index) {
        setState(() {
          isSelected[index] = !isSelected[index];
        });
      },
      isSelected: isSelected,
    );
  }
}

class ToggleButton2 extends StatefulWidget {
  @override
  _ToggleButton2State createState() => _ToggleButton2State();
}

class _ToggleButton2State extends State<ToggleButton2> {
  List<bool> isSelected = List.generate(3, (_) => false);

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      children: <Widget>[
        Icon(Icons.ac_unit),
        Icon(Icons.call),
        Icon(Icons.cake),
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
        });
      },
      isSelected: isSelected,
    );
  }
}

class ToggleButton3 extends StatefulWidget {
  @override
  _ToggleButton3State createState() => _ToggleButton3State();
}

class _ToggleButton3State extends State<ToggleButton3> {
  List<bool> isSelected = List.generate(3, (_) => false);

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      children: <Widget>[
        Icon(Icons.ac_unit),
        Icon(Icons.call),
        Icon(Icons.cake),
      ],
      onPressed: (int index) {
        setState(() {
          for (int buttonIndex = 0;
              buttonIndex < isSelected.length;
              buttonIndex++) {
            if (buttonIndex == index) {
              isSelected[buttonIndex] = !isSelected[buttonIndex];
            } else {
              isSelected[buttonIndex] = false;
            }
          }
        });
      },
      isSelected: isSelected,
    );
  }
}

class ToggleButton4 extends StatefulWidget {
  @override
  _ToggleButton4State createState() => _ToggleButton4State();
}

class _ToggleButton4State extends State<ToggleButton4> {
  List<bool> isSelected = List.generate(3, (_) => false);

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      children: <Widget>[
        Icon(Icons.ac_unit),
        Icon(Icons.call),
        Icon(Icons.cake),
      ],
      onPressed: (int index) {
        int count = 0;
        isSelected.forEach((bool val) {
          if (val) count++;
        });

        if (isSelected[index] && count < 2) return;

        setState(() {
          isSelected[index] = !isSelected[index];
        });
      },
      isSelected: isSelected,
    );
  }
}
