import 'package:flutter/material.dart';

class RectanglePaint extends StatelessWidget {
  const RectanglePaint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Container(
        width: 300.0,
        height: 300.0,
        color: Colors.white,
        child: CustomPaint(
          foregroundPainter: RectanglePainter(),
        ),
      ),
    );
  }
}

class RectanglePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 10
      ..color = Colors.amber
      ..style = PaintingStyle.stroke;

    final rect = Rect.fromPoints(
      Offset(size.width / 6, size.height / 6),
      Offset(size.width * 5 / 6, size.height * 5 / 6),
    );
    canvas.drawRect(rect, paint);
  }

  @override
  bool shouldRepaint(RectanglePainter oldDelegate) => false;
}
