import 'package:flutter/material.dart';

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample1'),
      ),
      body: Center(
          child: Column(
        children: <Widget>[
          const Spacer(),
          const Text('Selected color'),
          ToggleButtons1(),
          const Spacer(),
          const Text('Remove the border'),
          ToggleButtons2(),
          const Spacer(),
          const Text('Border customization'),
          ToggleButtons3(),
          const Spacer(),
          const Text('Inkwell color'),
          ToggleButtons4(),
          const Spacer(),
          const Text('Disabled color'),
          ToggleButtons5(),
          const Spacer(),
        ],
      )),
    );
  }
}

class ToggleButtons1 extends StatefulWidget {
  @override
  _ToggleButtons1State createState() => _ToggleButtons1State();
}

class _ToggleButtons1State extends State<ToggleButtons1> {
  final _selections = List.generate(3, (_) => false);

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      children: <Widget>[
        Icon(Icons.local_cafe),
        Icon(Icons.fastfood),
        Icon(Icons.cake),
      ],
      isSelected: _selections,
      onPressed: (index) {
        setState(() {
          _selections[index] = !_selections[index];
        });
      },
      color: Colors.green,
      selectedColor: Colors.orange,
      fillColor: Colors.red,
    );
  }
}

class ToggleButtons2 extends StatefulWidget {
  @override
  _ToggleButtons2State createState() => _ToggleButtons2State();
}

class _ToggleButtons2State extends State<ToggleButtons2> {
  final _selections = List.generate(3, (_) => false);

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      children: <Widget>[
        Icon(Icons.local_cafe),
        Icon(Icons.fastfood),
        Icon(Icons.cake),
      ],
      isSelected: _selections,
      onPressed: (index) {
        setState(() {
          _selections[index] = !_selections[index];
        });
      },
      renderBorder: false,
    );
  }
}

class ToggleButtons3 extends StatefulWidget {
  @override
  _ToggleButtons3State createState() => _ToggleButtons3State();
}

class _ToggleButtons3State extends State<ToggleButtons3> {
  final _selections = List.generate(3, (_) => false);

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      children: <Widget>[
        Icon(Icons.local_cafe),
        Icon(Icons.fastfood),
        Icon(Icons.cake),
      ],
      isSelected: _selections,
      onPressed: (index) {
        setState(() {
          _selections[index] = !_selections[index];
        });
      },
      borderRadius: BorderRadius.circular(30),
      borderWidth: 5,
      borderColor: Colors.orange,
      selectedBorderColor: Colors.deepOrange,
    );
  }
}

class ToggleButtons4 extends StatefulWidget {
  @override
  _ToggleButtons4State createState() => _ToggleButtons4State();
}

class _ToggleButtons4State extends State<ToggleButtons4> {
  final _selections = List.generate(3, (_) => false);

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      children: <Widget>[
        Icon(Icons.local_cafe),
        Icon(Icons.fastfood),
        Icon(Icons.cake),
      ],
      isSelected: _selections,
      onPressed: (index) {
        setState(() {
          _selections[index] = !_selections[index];
        });
      },
      splashColor: Colors.purple,
      highlightColor: Colors.yellow,
    );
  }
}

class ToggleButtons5 extends StatefulWidget {
  @override
  _ToggleButtons5State createState() => _ToggleButtons5State();
}

class _ToggleButtons5State extends State<ToggleButtons5> {
  final _selections = List.generate(3, (_) => false);

  @override
  Widget build(BuildContext context) {
    return ToggleButtons(
      children: <Widget>[
        Icon(Icons.local_cafe),
        Icon(Icons.fastfood),
        Icon(Icons.cake),
      ],
      isSelected: _selections,
      onPressed: null,
      disabledColor: Colors.grey[300],
      disabledBorderColor: Colors.blueGrey,
    );
  }
}
