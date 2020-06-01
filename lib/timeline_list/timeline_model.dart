import 'package:flutter/material.dart';

enum TimelineItemPosition { left, right, random }

class TimelineModel {
  final String year;
  final Icon icon;
  final Color iconBackground;
  final Widget child;
  final TimelineItemPosition position;
  bool isFirst;
  bool isLast;

  TimelineModel(this.child,
      {this.year,
      this.icon,
      this.iconBackground,
      this.position = TimelineItemPosition.random,
      this.isFirst = false,
      this.isLast = false});

  @override
  bool operator ==(o) {
    if (identical(this, o)) return true;
    if (runtimeType != o.runtimeType) return false;
    final TimelineModel typedOther = o;
    return year == typedOther.year &&
        icon == typedOther.icon &&
        iconBackground == typedOther.iconBackground &&
        child == typedOther.child &&
        isFirst == typedOther.isFirst &&
        isLast == typedOther.isLast &&
        position == typedOther.position;
  }

  @override
  int get hashCode =>
      hashValues(year, icon, iconBackground, child, position, isFirst, isLast);

  TimelineModel copyWith(
          {year, icon, iconBackground, child, position, isFirst, isLast}) =>
      TimelineModel(child ?? this.child,
          year: year ?? this.year,
          icon: icon ?? this.icon,
          iconBackground: iconBackground ?? this.iconBackground,
          position: position ?? this.position,
          isFirst: isFirst ?? this.isFirst,
          isLast: isLast ?? this.isLast);
}
