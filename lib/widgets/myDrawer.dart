import 'package:estonian_history/constants.dart';
import 'package:estonian_history/global.dart';
import 'package:estonian_history/helper/period.dart';
import 'package:estonian_history/timeline_list/timeline.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  List<Period> periods;
  List<Timeline> timelines;

  MyDrawer(this.periods, this.timelines, {Key key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState(periods, timelines);
}

class _MyDrawerState extends State<MyDrawer> {
  List<Period> periods;
  List<Timeline> timelines;

  _MyDrawerState(this.periods, this.timelines);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: kPrimaryColor,
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 10),
        child: Center(
          child: ListView(
            children: periods
                .asMap()
                .map((i, period) {
                  return MapEntry(
                    i,
                    GestureDetector(
                      onTap: () {
                        Scrollable.ensureVisible(
                            timelines[i].tKey.currentContext);
                        Navigator.of(context).pop();
                        // _scrollController.scrollTo(
                        //     index: 150, duration: Duration(seconds: 1));
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 15),
                        child: ListTile(
                          title: Text(
                            period.periodTitle,
                            style: Theme.of(context).textTheme.headline6,
                          ),
                        ),
                      ),
                    ),
                  );
                })
                .values
                .toList(),
          ),
        ),
      ),
    );
  }
}
