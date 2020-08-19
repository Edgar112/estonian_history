import 'package:flutter/material.dart';

class CirclePainter extends CustomPainter {
  final screenValue;

  final double fraction;
  var _circlePaint;

  CirclePainter({this.fraction, this.screenValue}) {
    _circlePaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.stroke
      ..strokeWidth = screenValue * 1.4
      ..strokeCap = StrokeCap.round;
  }

  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawCircle(
        Offset(0.0, 0.0), screenValue * 1.4 * fraction, _circlePaint);
  }

  @override
  bool shouldRepaint(CirclePainter oldDelegate) {
    return oldDelegate.fraction != fraction;
  }
}
