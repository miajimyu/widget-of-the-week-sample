import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class CustomPaintPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CustomPaint & CustomPainter'),
      ),
      // https://api.flutter.dev/flutter/widgets/CustomPaint-class.html
      body: CustomPaint(
        painter: Sky(),
        child: const Center(
          child: Text(
            'Once upon a time...',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w900,
              color: Color(0xFFFFFFFF),
            ),
          ),
        ),
      ),
    );
  }
}

// https://api.flutter.dev/flutter/rendering/CustomPainter-class.html
class Sky extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final rect = Offset.zero & size;
    const gradient = RadialGradient(
      center: Alignment(0.7, -0.6),
      radius: 0.2,
      colors: <Color>[Color(0xFFFFFF00), Color(0xFF0099FF)],
      stops: <double>[0.4, 1],
    );
    canvas.drawRect(
      rect,
      Paint()..shader = gradient.createShader(rect),
    );
  }

  @override
  SemanticsBuilderCallback get semanticsBuilder {
    return (size) {
      // Annotate a rectangle containing the picture of the sun
      // with the label "Sun". When text to speech feature is enabled on the
      // device, a user will be able to locate the sun on this picture by
      // touch.
      var rect = Offset.zero & size;
      final width = size.shortestSide * 0.4;
      rect = const Alignment(0.8, -0.9).inscribe(Size(width, width), rect);
      return <CustomPainterSemantics>[
        CustomPainterSemantics(
          rect: rect,
          properties: const SemanticsProperties(
            label: 'Sun',
            textDirection: TextDirection.ltr,
          ),
        ),
      ];
    };
  }

  // Since this Sky painter has no fields, it always paints
  // the same thing and semantics information is the same.
  // Therefore we return false here. If we had fields (set
  // from the constructor) then we would return true if any
  // of them differed from the same fields on the oldDelegate.
  @override
  bool shouldRepaint(Sky oldDelegate) => false;
  @override
  bool shouldRebuildSemantics(Sky oldDelegate) => false;
}
