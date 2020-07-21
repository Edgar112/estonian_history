import 'package:flutter/material.dart';

Widget backButton(
    BuildContext context, Color backgroundColor, Color iconColor) {
  return Container(
    padding: EdgeInsets.all(4),
    margin: EdgeInsets.only(top: 35),
    child: Stack(
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(90),
            color: backgroundColor,
          ),
          margin: EdgeInsets.only(left: 4, top: 4),
          width: 40,
          height: 40,
        ),
        Container(
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            color: iconColor,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ),
      ],
    ),
  );
}
