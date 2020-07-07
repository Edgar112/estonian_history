import 'package:estonian_history/helper/picture.dart';
import 'package:estonian_history/widgets/imageSwiper.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp4());

class MyApp4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        title: 'Flutter Demo',
        theme: new ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
          body: ImageSwiper([
            Picture('kivikirstkalmistu',
                'assets/illustrations/kivikirstkalmistu.jpg'),
            Picture('laanemeriJarv', 'assets/illustrations/laanemeriJarv.png')
          ]),
        ));
  }
}
