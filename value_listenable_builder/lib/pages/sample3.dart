import 'package:flutter/material.dart';

class Sample3Page extends StatefulWidget {
  @override
  _Sample3PageState createState() => _Sample3PageState();
}

class _Sample3PageState extends State<Sample3Page> {
  var myNotifier = MyNotifier(MyDataClass(myInt: 1));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample3 ValueNotifier'),
      ),
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: myNotifier,
          child: Container(
            width: 100,
            height: 100,
            color: Colors.green,
          ),
          builder: (context, value, _) {
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
  int myInt;
  MyDataClass({@required this.myInt});
}

class MyNotifier extends ValueNotifier<MyDataClass> {
  MyNotifier(MyDataClass value) : super(value);

  void changeMyData(int i) {
    value.myInt = i;
    notifyListeners();
  }
}
