import 'package:flutter/material.dart';

class Event {
  final String name;
  final String cover;
  final Widget text;
  final String image;
  final Color iconBackground;
  final Icon icon;
  final String date;
  final String subDate;
  final bool more;
  const Event(
      {this.name,
      this.cover,
      this.text,
      this.image,
      this.icon,
      this.iconBackground,
      this.date,
      this.subDate,
      this.more = false});
}
