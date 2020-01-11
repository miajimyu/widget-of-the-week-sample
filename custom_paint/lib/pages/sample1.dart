import 'package:flutter/material.dart';
import 'dart:math' as Math;

class Sample1Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sample1'),
      ),
      body: Center(
        child: Container(
          color: Colors.black,
          width: 200,
          height: 200,
          child: Stack(
            children: <Widget>[
              customPaint0,
              // customPaint1,
              // customPaint2,
              // customPaint3,
              // customPaint4,
              // customPaint5,
              // customPaint6,
              // customPaint7,
              // customPaint8,
              // customPaint9,
            ],
          ),
        ),
      ),
    );
  }
}

final customPaint0 = CustomPaint(
  painter: MyPainter0(),
  child: Container(),
);

class MyPainter0 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final myPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.orange
      ..maskFilter = MaskFilter.blur(BlurStyle.solid, 5.0)
      ..strokeWidth = 10;

    var path = Path()
      ..addOval(Rect.fromLTWH(
        size.width * 2 / 10,
        size.height * 1 / 10,
        size.width * 6 / 10,
        size.height * 8 / 10,
      ));

    canvas.drawPath(path, myPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

final customPaint1 = CustomPaint(
  painter: MyPainter1(),
  child: Container(),
);

class MyPainter1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final myPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.orange
      ..maskFilter = MaskFilter.blur(BlurStyle.solid, 5.0)
      ..strokeWidth = 10;

    var path = Path()
      ..moveTo(size.width * 3 / 10, size.width * 3 / 10)
      ..lineTo(size.width * 5 / 10, size.width * 1 / 10)
      ..lineTo(size.width * 5 / 10, size.height * 9 / 10);

    canvas.drawPath(path, myPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

final customPaint2 = CustomPaint(
  painter: MyPainter2(),
  child: Container(),
);

class MyPainter2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final myPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.orange
      ..maskFilter = MaskFilter.blur(BlurStyle.solid, 5.0)
      ..strokeWidth = 10;

    // Method to convert degree to radians
    num degToRad(num deg) => deg * (Math.pi / 180.0);

    var path = Path()
      ..arcTo(
        Rect.fromLTWH(
          size.width * 3 / 10,
          size.height * 1 / 10,
          size.width * 4 / 10,
          size.height * 4 / 10,
        ),
        degToRad(190),
        degToRad(210),
        true,
      )
      ..quadraticBezierTo(
        size.width * 4 / 10,
        size.width * 7 / 10,
        size.width * 3 / 10,
        size.width * 9 / 10,
      )
      ..lineTo(
        size.width * 7.5 / 10,
        size.width * 9 / 10,
      );

    canvas.drawPath(path, myPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

final customPaint3 = CustomPaint(
  painter: MyPainter3(),
  child: Container(),
);

class MyPainter3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final myPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.orange
      ..maskFilter = MaskFilter.blur(BlurStyle.solid, 5.0)
      ..strokeWidth = 10;

    // Method to convert degree to radians
    num degToRad(num deg) => deg * (Math.pi / 180.0);

    var path = Path()
      ..moveTo(
        size.width * 3 / 10,
        size.width * 1 / 10,
      )
      ..lineTo(
        size.width * 8 / 10,
        size.width * 1 / 10,
      )
      ..lineTo(
        size.width * 6 / 10,
        size.width * 4 / 10,
      )
      ..arcTo(
        Rect.fromLTWH(
          size.width * 3 / 10,
          size.height * 4 / 10,
          size.width * 5 / 10,
          size.height * 5 / 10,
        ),
        degToRad(290),
        degToRad(250),
        false,
      );

    canvas.drawPath(path, myPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

final customPaint4 = CustomPaint(
  painter: MyPainter4(),
  child: Container(),
);

class MyPainter4 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final myPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.orange
      ..maskFilter = MaskFilter.blur(BlurStyle.solid, 5.0)
      ..strokeWidth = 10;

    var path = Path()
      ..moveTo(
        size.width * 6 / 10,
        size.width * 9 / 10,
      )
      ..lineTo(
        size.width * 6 / 10,
        size.width * 1 / 10,
      )
      ..lineTo(
        size.width * 2 / 10,
        size.width * 6 / 10,
      )
      ..lineTo(
        size.width * 8 / 10,
        size.width * 6 / 10,
      );

    canvas.drawPath(path, myPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

final customPaint5 = CustomPaint(
  painter: MyPainter5(),
  child: Container(),
);

class MyPainter5 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final myPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.orange
      ..maskFilter = MaskFilter.blur(BlurStyle.solid, 5.0)
      ..strokeWidth = 10;

    // Method to convert degree to radians
    num degToRad(num deg) => deg * (Math.pi / 180.0);

    var path = Path()
      ..moveTo(
        size.width * 7 / 10,
        size.width * 1 / 10,
      )
      ..lineTo(
        size.width * 3 / 10,
        size.width * 1 / 10,
      )
      ..lineTo(
        size.width * 2.5 / 10,
        size.width * 5 / 10,
      )
      ..arcTo(
        Rect.fromLTWH(
          size.width * 2 / 10,
          size.height * 4 / 10,
          size.width * 6 / 10,
          size.height * 5 / 10,
        ),
        degToRad(230),
        degToRad(290),
        false,
      );

    canvas.drawPath(path, myPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

final customPaint6 = CustomPaint(
  painter: MyPainter6(),
  child: Container(),
);

class MyPainter6 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final myPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.orange
      ..maskFilter = MaskFilter.blur(BlurStyle.solid, 5.0)
      ..strokeWidth = 10;

    // Method to convert degree to radians
    num degToRad(num deg) => deg * (Math.pi / 180.0);

    var path = Path()
      ..moveTo(
        size.width * 5 / 10,
        size.width * 1 / 10,
      )
      ..lineTo(
        size.width * 3 / 10,
        size.width * 5 / 10,
      )
      ..arcTo(
        Rect.fromLTWH(
          size.width * 2.5 / 10,
          size.height * 4 / 10,
          size.width * 5 / 10,
          size.height * 5 / 10,
        ),
        degToRad(200),
        degToRad(360),
        false,
      );

    canvas.drawPath(path, myPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

final customPaint7 = CustomPaint(
  painter: MyPainter7(),
  child: Container(),
);

class MyPainter7 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final myPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.orange
      ..maskFilter = MaskFilter.blur(BlurStyle.solid, 5.0)
      ..strokeWidth = 10;

    var path = Path()
      ..moveTo(
        size.width * 2 / 10,
        size.width * 1 / 10,
      )
      ..lineTo(
        size.width * 8 / 10,
        size.width * 1 / 10,
      )
      ..lineTo(
        size.width * 5 / 10,
        size.width * 9 / 10,
      );

    canvas.drawPath(path, myPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

final customPaint8 = CustomPaint(
  painter: MyPainter8(),
  child: Container(),
);

class MyPainter8 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final myPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.orange
      ..maskFilter = MaskFilter.blur(BlurStyle.solid, 5.0)
      ..strokeWidth = 10;

    const L1 = 4.0;
    const T1 = 1;
    const H1 = 3.5;

    const L2 = 5.0;
    const T2 = T1 + H1;

    final path = Path()
      ..moveTo(
        size.width * 2 / 10,
        size.width * 1 / 10,
      )
      ..addOval(
        Rect.fromLTWH(
          size.width * (10 - L1) / 2 / 10,
          size.height * T1 / 10,
          size.width * L1 / 10,
          size.height * H1 / 10,
        ),
      )
      ..addOval(
        Rect.fromLTWH(
          size.width * (10 - L2) / 2 / 10,
          size.height * T2 / 10,
          size.width * L2 / 10,
          size.height * 4.5 / 10,
        ),
      );

    canvas.drawPath(path, myPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

final customPaint9 = CustomPaint(
  painter: MyPainter9(),
  child: Container(),
);

class MyPainter9 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final myPaint = Paint()
      ..style = PaintingStyle.stroke
      ..color = Colors.orange
      ..maskFilter = MaskFilter.blur(BlurStyle.solid, 5.0)
      ..strokeWidth = 10;

    // Method to convert degree to radians
    num degToRad(num deg) => deg * (Math.pi / 180.0);

    final path = Path()
      ..arcTo(
        Rect.fromLTWH(
          size.width * 2.5 / 10,
          size.height * 1 / 10,
          size.width * 5 / 10,
          size.height * 5 / 10,
        ),
        degToRad(30),
        degToRad(350),
        false,
      )
      ..lineTo(
        size.width * 5 / 10,
        size.width * 9 / 10,
      );

    canvas.drawPath(path, myPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
