import 'package:estonian_history/constants.dart';
import 'package:estonian_history/my_behavior.dart';
import 'package:estonian_history/screens/history_timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(EstonianHistory());

class EstonianHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: MyBehavior(),
          child: child,
        );
      },
      debugShowCheckedModeBanner: false,
      title: 'empty',
      theme: ThemeData(
        textTheme: GoogleFonts.reemKufiTextTheme(Theme.of(context).textTheme),
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      home: HistoryTimeline(title: 'empty'),
    );
  }
}
