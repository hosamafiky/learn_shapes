import 'package:flutter/material.dart';
import 'dart:math' as math;

class CustomShapePaint extends StatelessWidget {
  const CustomShapePaint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Container(
        width: 300.0,
        height: 300.0,
        color: Colors.white,
        child: CustomPaint(
          foregroundPainter: CustomShapePainter(),
        ),
      ),
    );
  }
}

class CustomShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 10
      ..color = Colors.amber
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    canvas.drawLine(
      Offset(0, size.height / 2),
      Offset(size.width * 1 / 6, size.height * 5 / 12),
      paint,
    );
    canvas.drawLine(
      Offset(0, size.height / 2),
      Offset(size.width * 1 / 6, size.height * 7 / 12),
      paint,
    );
    final rect = Rect.fromPoints(
        Offset(size.width * 1 / 6, size.height * 1 / 12),
        Offset(size.width, size.height * 11 / 12));
    double startAngle = math.pi - math.atan(0.25 / 1.25);
    double sweepAngle = -(2 * startAngle);

    canvas.drawArc(rect, startAngle, sweepAngle, false, paint);
  }

  @override
  bool shouldRepaint(CustomShapePainter oldDelegate) => false;
}
