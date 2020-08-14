import 'package:estonian_history/global.dart';
import 'package:flutter/material.dart';

class CircleAnimation extends StatefulWidget {
  @override
  _CircleAnimationState createState() => _CircleAnimationState();
}

class _CircleAnimationState extends State<CircleAnimation>
    with SingleTickerProviderStateMixin {
  double _fraction = 0.0;
  Animation<double> _animation;
  @override
  void initState() {
    super.initState();
    circleAnimationController = AnimationController(
        duration: Duration(milliseconds: 2000), vsync: this);

    _animation = Tween(begin: 1.0, end: 0.0).animate(circleAnimationController)
      ..addListener(() {
        setState(() {
          _fraction = _animation.value;
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double screenValue = height;
    if (width > height) {
      screenValue = width;
    }
    return Container(
      child: Center(
        child: CustomPaint(
          painter: CirclePainter(fraction: _fraction, screenValue: screenValue),
        ),
      ),
    );
  }

  @override
  void dispose() {
    circleAnimationController.dispose();
    super.dispose();
  }
}

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
