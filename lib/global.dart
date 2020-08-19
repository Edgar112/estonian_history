import 'package:flutter/material.dart';

ScrollController timelineScrollController = ScrollController();

ScrollController background1ScrollController = ScrollController();
ScrollController background2ScrollController = ScrollController();
ScrollController background3ScrollController = ScrollController();

BuildContext contextHistoryInfo;

bool isBlur = false;

AnimationController blurAnimationController;
Animation blurAnimation;

AnimationController circleAnimationController;

AnimationController bgAnimationController;
Animation bgAnimation;  