import 'package:flutter/material.dart';

class CurvedContainer extends StatelessWidget {
  CurvedContainer({
    required this.color,
    required this.height,
  });

  final double height;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: height,
        width: double.infinity,
        child: CustomPaint(
          painter: _CurvePainter(color),
        ));
  }
}

class _CurvePainter extends CustomPainter {
  _CurvePainter(this.color);
  Color color;
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.color = color;
    paint.style = PaintingStyle.fill;

    var path = Path();

    path.moveTo(0, size.height * 0.7);
    path.quadraticBezierTo(
      size.width * 0.55,
      size.height * 1.1,
      size.width,
      size.height * 0.9,
    );
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
