import 'package:estonian_history/data.dart';
import 'package:flutter/material.dart';

class HistoryInfo extends StatefulWidget {
  Event event;
  HistoryInfo(this.event);

  @override
  _HistoryInfoState createState() => _HistoryInfoState(event);
}

class _HistoryInfoState extends State<HistoryInfo> {
  Event event;
  _HistoryInfoState(this.event);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Text(event.name),
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
