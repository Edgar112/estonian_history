import 'dart:ui';

import 'package:estonian_history/screens/history_timeline.dart';
import 'package:flutter/material.dart';
import 'package:estonian_history/global.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    blurAnimationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 300))
          ..addListener(() {
            setState(() {});
          });

    blurAnimation =
        Tween<double>(begin: 0, end: 10).animate(blurAnimationController);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          HistoryTimeline(),
          isBlur
              ? Container(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: blurAnimation.value,
                      sigmaY: blurAnimation.value,
                    ),
                    child: Container(
                      color: Colors.transparent,
                    ),
                  ),
                )
              : Container()
        ],
      ),
    );
  }
}
