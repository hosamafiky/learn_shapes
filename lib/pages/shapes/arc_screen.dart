import 'package:flutter/material.dart';

class ArcPaint extends StatelessWidget {
  const ArcPaint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Container(
        width: 300.0,
        height: 300.0,
        color: Colors.white,
        child: CustomPaint(
          foregroundPainter: ArcPainter(),
        ),
      ),
    );
  }
}

class ArcPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..strokeWidth = 10
      ..color = Colors.amber
      ..style = PaintingStyle.stroke;

    final path = Path();
    path.moveTo(size.width * 0.2, size.height * 0.2);
    path.arcToPoint(
      Offset(size.width * 0.8, size.height * 0.2),
      radius: const Radius.circular(100.0),
    );
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(ArcPainter oldDelegate) => false;
}
