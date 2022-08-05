import 'package:flutter/material.dart';

class LinePaint extends StatelessWidget {
  const LinePaint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Container(
        width: 300.0,
        height: 300.0,
        color: Colors.white,
        child: CustomPaint(
          foregroundPainter: LinePainter(),
        ),
      ),
    );
  }
}

class LinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 10
      ..color = Colors.amber
      ..strokeCap = StrokeCap.round;
    canvas.drawLine(
      Offset(size.width / 6, size.height / 2),
      Offset(size.width * 5 / 6, size.height / 2),
      paint,
    );
  }

  @override
  bool shouldRepaint(LinePainter oldDelegate) => false;
}
