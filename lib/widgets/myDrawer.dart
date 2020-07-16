import 'package:estonian_history/constants.dart';
import 'package:estonian_history/global.dart';
import 'package:estonian_history/helper/period.dart';
import 'package:estonian_history/timeline_list/timeline.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  final List<Period> periods;
  final List<Timeline> timelines;

  const MyDrawer(this.periods, this.timelines, {Key key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState(
        periods,
        timelines,
      );
}

class _MyDrawerState extends State<MyDrawer> {
  List<Period> periods;
  List<Timeline> timelines;

  _MyDrawerState(this.periods, this.timelines);

  double drawerOpacity = 1.0;
  double firstPadding, lastPadding = 0;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 0,
      child: Container(
        color: kPrimaryColor.withOpacity(drawerOpacity),
        padding: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: periods
                  ?.asMap()
                  ?.map((i, period) {
                    return MapEntry(
                      i,
                      Builder(builder: (context) {
                        firstPadding = 0;
                        lastPadding = 0;
                        if (i == 0) firstPadding = 50;
                        if (i == periods.length - 1) lastPadding = 50;
                        return Container(
                          padding: EdgeInsets.only(
                              top: firstPadding, bottom: lastPadding),
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                isBlur = true;
                                drawerOpacity = 0.0;
                              });

                              Navigator.of(context).pop();
                              blurAnimationController
                                  .forward()
                                  .whenComplete(() async {
                                scrollToKey(i);
                              });
                            },
                            child: Container(
                              padding: EdgeInsets.symmetric(vertical: 15),
                              child: ListTile(
                                title: Text(
                                  period.periodTitle,
                                  style: TextStyle(
                                      fontSize: 20,
                                      color: kText2Color
                                          .withOpacity(drawerOpacity)),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                    );
                  })
                  ?.values
                  ?.toList() ??
              [],
        ),
      ),
    );
  }

  scrollToKey(int i, [int recrussionLevel = 1]) {
    Scrollable.ensureVisible(timelines[i].tKey.currentContext,
            duration: Duration(milliseconds: 300), curve: Curves.easeInOut)
        .whenComplete(() {
      if (getKeyYToPosition(i) != 6.0 && recrussionLevel < 10) {
        // repeat when doesn't scroll to tKey
        print(getKeyYToPosition(i).toString() +
            ' POS\n ' +
            recrussionLevel.toString());
        recrussionLevel++;
        scrollToKey(i, recrussionLevel);
      } else {
        blurAnimationController.reverse().whenComplete(() => isBlur = false);
      }
    });
  }

  double getKeyYToPosition(int i) {
    RenderBox box = timelines[i].tKey.currentContext.findRenderObject();
    Offset position = box.localToGlobal(Offset.zero);
    double y = position.dy;
    return y;
  }
}
