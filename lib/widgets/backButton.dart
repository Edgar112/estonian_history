import 'package:estonian_history/constants.dart';
import 'package:flutter/material.dart';

Widget backButton(BuildContext context, Color color) {
  return Container(
    padding: EdgeInsets.all(4),
    margin: EdgeInsets.only(top: 35),
    child: IconButton(
      icon: Icon(Icons.arrow_back),
      color: color,
      onPressed: () {
        Navigator.pop(context);
      },
    ),
  );
}
