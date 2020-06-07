import 'package:flutter/material.dart';

class OnlyText extends StatefulWidget {
  Map text;
  OnlyText(Map text, {Key key}) : super(key: key);

  @override
  _OnlyTextState createState() => _OnlyTextState(this.text);
}

class _OnlyTextState extends State<OnlyText> {
  Map text;
  _OnlyTextState(this.text);
  @override
  Widget build(BuildContext context) {
    // return Text(
    //   text[1],
    //   style: Theme.of(context).textTheme.headline6,
    // );
  }
}
