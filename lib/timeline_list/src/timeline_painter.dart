import 'package:estonian_history/constants.dart';
import 'package:flutter/material.dart';
import 'package:estonian_history/timeline_list/timeline.dart';

class TimelineBoxDecoration extends Decoration {
  final Color iconBackground;
  final TimelineProperties properties;
  final double iconSize;
  final bool isFirst;
  final bool isLast;
  final TimelinePosition timelinePosition;

  static const double DEFAULT_DOT_SIZE = 12.0;
  static const double DEFAULT_ICON_SIZE = 24.0; // default icon size
  static const double LINE_GAP = 9;

  TimelineBoxDecoration(
      {this.properties,
      this.iconSize,
      this.iconBackground,
      this.isFirst,
      this.isLast,
      this.timelinePosition});

  @override
  BoxPainter createBoxPainter([VoidCallback onChanged]) {
    switch (timelinePosition) {
      default:
        return _TimelinePainterLeft(
            isFirst: isFirst,
            isLast: isLast,
            iconBackground: iconBackground,
            properties: properties,
            iconSize: iconSize);
    }
  }
}

abstract class _TimelinePainter extends BoxPainter {
  final Paint linePaint;
  final Paint circlePaint;
  final double iconSize;
  final bool isFirst;
  final bool isLast;
  final TimelinePosition timelinePosition;
  final TimelineProperties properties;

  _TimelinePainter(
      {this.iconSize,
      this.properties,
      this.isFirst = false,
      this.isLast = false,
      this.timelinePosition,
      iconBackground})
      : linePaint = Paint()
          ..color = kText1Color
          ..strokeCap = StrokeCap.round
          ..strokeWidth = properties.lineWidth
          ..style = PaintingStyle.stroke,
        circlePaint = Paint()
          ..color = iconBackground ?? const Color(0xFFCCCCCC)
          ..style = PaintingStyle.fill;
}

class _TimelinePainterLeft extends _TimelinePainter {
  _TimelinePainterLeft({iconSize, properties, isFirst, isLast, iconBackground})
      : super(
            iconSize: iconSize,
            properties: properties,
            isFirst: isFirst,
            isLast: isLast,
            iconBackground: iconBackground);

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration configuration) {
    double iconBackgroundRadius = iconSize / 2 + TimelineBoxDecoration.LINE_GAP;

    double iconMargin;
    if (iconSize == TimelineBoxDecoration.DEFAULT_DOT_SIZE)
      iconMargin = TimelineBoxDecoration.DEFAULT_ICON_SIZE / 2 +
          4.5 * TimelineBoxDecoration.LINE_GAP;
    else
      iconMargin = iconBackgroundRadius + TimelineBoxDecoration.LINE_GAP;

    Offset leftOffset = Offset(iconMargin, offset.dy);
    Offset top = configuration.size.topLeft(Offset(leftOffset.dx, 0.0));
    Offset centerTop = configuration.size
        .centerLeft(Offset(leftOffset.dx, leftOffset.dy - iconMargin));
    Offset centerBottom = configuration.size
        .centerLeft(Offset(leftOffset.dx, leftOffset.dy + iconMargin));
    Offset end =
        configuration.size.bottomLeft(Offset(leftOffset.dx, leftOffset.dy * 2));
    if (!isFirst) canvas.drawLine(top, centerTop, linePaint);
    if (!isLast) canvas.drawLine(centerBottom, end, linePaint);

    Offset offsetCenter = configuration.size.centerLeft(leftOffset);
    canvas.drawCircle(offsetCenter, iconBackgroundRadius, circlePaint);
  }
}
