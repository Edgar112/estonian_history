import 'package:flutter/material.dart';

enum TimelineItemPosition { left, right, random }

class TimelineModel {
  final String date;
  final String subDate;
  final Icon icon;
  final Color iconBackground;
  final Widget child;
  final TimelineItemPosition position;
  bool isFirst;
  bool isLast;

  TimelineModel(this.child,
      {this.date,
      this.subDate,
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
    return date == typedOther.date &&
        subDate == typedOther.subDate &&
        icon == typedOther.icon &&
        iconBackground == typedOther.iconBackground &&
        child == typedOther.child &&
        isFirst == typedOther.isFirst &&
        isLast == typedOther.isLast &&
        position == typedOther.position;
  }

  @override
  int get hashCode => hashValues(
      date, subDate, icon, iconBackground, child, position, isFirst, isLast);

  TimelineModel copyWith(
          {date,
          subDate,
          icon,
          iconBackground,
          child,
          position,
          isFirst,
          isLast}) =>
      TimelineModel(child ?? this.child,
          date: date ?? this.date,
          subDate: subDate ?? this.subDate,
          icon: icon ?? this.icon,
          iconBackground: iconBackground ?? this.iconBackground,
          position: position ?? this.position,
          isFirst: isFirst ?? this.isFirst,
          isLast: isLast ?? this.isLast);
}
