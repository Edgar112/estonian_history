import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        home: Scaffold(
          appBar: AppBar(
            title: Text('Material App Bar'),
          ),
          body: Center(
            child: Container(
              height: 200,
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 120,
                width: 120,
                child: IconButton(
                  // alignment: Alignment.center,
                  // highlightColor: Colors.transparent,
                  // splashColor: Colors.transparent,
                  // padding: EdgeInsets.only(top: 100),
                  icon: Icon(
                    Icons.next_week,
                    color: Color(0xFF282828),
                    size: 100,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ),
        ));
  }
}
