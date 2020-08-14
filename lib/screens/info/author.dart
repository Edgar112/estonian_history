import 'package:flutter/material.dart';

class Author extends StatefulWidget {
  Author({Key key}) : super(key: key);

  @override
  _AuthorState createState() => _AuthorState();
}

class _AuthorState extends State<Author> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Center(
        child: Container(
            color: Colors.white,
            child: Text('Edgar Vasli', style: TextStyle(fontSize: 40))),
      ),
    );
  }
}
