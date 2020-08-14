import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        // body: CircleAnimation()
      ),
    );
  }
}

// class CircleAnimation extends StatefulWidget {
//   @override
//   _CircleAnimationState createState() => _CircleAnimationState();
// }

// class _CircleAnimationState extends State<CircleAnimation>
//     with SingleTickerProviderStateMixin {
//   double _fraction = 0.0;
//   Animation<double> _animation;
//   AnimationController _controller;
//   @override
//   void initState() {
//     super.initState();

//     _controller = AnimationController(
//         duration: Duration(milliseconds: 2000), vsync: this);

//     _animation = Tween(begin: 1.0, end: 0.0).animate(_controller)
//       ..addListener(() {
//         setState(() {
//           _fraction = _animation.value;
//         });
//       });

//     _controller.forward();
//   }

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     return Container(
//       child: Center(
//         child: CustomPaint(
//           painter:
//               CirclePainter(fraction: _fraction, width: width, height: height),
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
// }

// class CirclePainter extends CustomPainter {
//   final double width;
//   final double height;

//   final double fraction;
//   var _circlePaint;

//   CirclePainter({this.fraction, this.width, this.height}) {
//     _circlePaint = Paint()
//       ..color = Colors.black
//       ..style = PaintingStyle.stroke
//       ..strokeWidth = height
//       ..strokeCap = StrokeCap.round;
//   }

//   @override
//   void paint(Canvas canvas, Size size) {
//     canvas.drawCircle(Offset(0.0, 0.0), height * fraction, _circlePaint);
//   }

//   @override
//   bool shouldRepaint(CirclePainter oldDelegate) {
//     return oldDelegate.fraction != fraction;
//   }
// }
