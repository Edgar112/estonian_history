import 'dart:io';
import 'dart:math';

import 'package:align_positioned/align_positioned.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/physics.dart';

class PhysicsAnimation extends StatefulWidget {
  List<Widget> authorCharWidgets;
  PhysicsAnimation(this.authorCharWidgets);
  _PhysicsAnimation createState() => _PhysicsAnimation(authorCharWidgets);
}

class _PhysicsAnimation extends State<PhysicsAnimation>
    with TickerProviderStateMixin {
  AnimationController controller;
  List<Widget> authorCharWidgets;
  _PhysicsAnimation(this.authorCharWidgets);
  SpringSimulation simulation;
  List<PhysicsWidget> physicsElements = List<PhysicsWidget>();
  Random rand = Random();
  List<Widget> authorNameChars;

  @override
  void initState() {
    super.initState();

    authorCharWidgets.forEach((widget) {
      physicsElements.add(PhysicsWidget(
          widget, generateSimulation(rand), generateAnimationController(rand)));
    });
    physicsElements.forEach((element) {
      element.controller.animateWith(element.simulation);
    });
  }

  SpringSimulation generateSimulation(Random rand) {
    return SpringSimulation(
      SpringDescription(
        mass: 1,
        stiffness: 100,
        damping: 1,
      ),
      rand.nextDouble() * -50.0, // starting point
      120, // ending point
      rand.nextDouble() * 50, // velocity
    );
  }

  AnimationController generateAnimationController(Random rand) {
    return controller = AnimationController(vsync: this, upperBound: 500)
      ..addListener(() {
        setState(() {});
      });
  }

  authorName(BuildContext context) {
    authorNameChars = [];
    double index = 0;
    physicsElements.forEach((element) {
      authorNameChars.add(
        DelayedDisplay(
          delay: Duration(milliseconds: 200 * index.toInt()),
          child: AlignPositioned(
            alignment: Alignment.topCenter,
            touch: Touch.inside,
            dx: -150, // depends on author name length
            dy: element.controller.value,
            moveByContainerWidth: index,
            child: element.widget,
          ),
        ),
      );
      index++;
    });
    return authorNameChars;
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        width: 30,
        height: 250,
        // color: Colors.redAccent,
        child: Stack(children: authorName(context)),
      ),
    );
  }

  @override
  void dispose() {
    physicsElements.forEach((element) => element.controller.dispose());
    super.dispose();
  }
}

class PhysicsWidget {
  Widget widget;
  SpringSimulation simulation;
  AnimationController controller;
  PhysicsWidget(this.widget, this.simulation, this.controller);
}
