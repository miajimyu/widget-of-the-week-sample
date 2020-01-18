import 'package:flutter/material.dart';

class Sample3Page extends StatefulWidget {
  @override
  _Sample3PageState createState() => _Sample3PageState();
}

class _Sample3PageState extends State<Sample3Page> {
  MyNotifier myNotifier = MyNotifier(MyDataClass(myInt: 1));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sample3 ValueNotifier'),
      ),
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: myNotifier,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
          builder: (context, dynamic value, _) {
            return Text(
              '${value.myInt}',
              style: Theme.of(context).textTheme.display1,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myNotifier.changeMyData(myNotifier.value.myInt + 1);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

class MyDataClass {
  MyDataClass({@required this.myInt});

  int myInt;
}

class MyNotifier extends ValueNotifier<MyDataClass> {
  MyNotifier(MyDataClass value) : super(value);

  void changeMyData(int i) {
    value.myInt = i;
    notifyListeners();
  }
}
