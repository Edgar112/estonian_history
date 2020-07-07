import 'package:flutter/material.dart';

class MyBehavior extends ScrollBehavior {
  @override
  // Removes "The glow effect" from scroll
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return child;
  }
}
