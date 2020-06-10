import 'package:estonian_history/screens/history_timeline/history_info.dart';
import 'package:estonian_history/timeline_list/src/timeline_item.dart';
import 'package:estonian_history/transitions/fade_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:estonian_history/timeline_list/timeline.dart';
import 'package:estonian_history/timeline_list/timeline_model.dart';
import 'package:estonian_history/event/event.dart';
import 'package:estonian_history/constants.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:estonian_history/global.dart';

class HistoryTimeline extends StatefulWidget {
  HistoryTimeline({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HistoryTimelineState createState() => _HistoryTimelineState();
}

class _HistoryTimelineState extends State<HistoryTimeline> {
  final PageController pageController =
      PageController(initialPage: 1, keepPage: true);
  int pageIx = 1;

  final ScrollController timelineScrollController = ScrollController();
  List<Event> events;
  @override
  void initState() {
    timelineScrollController.addListener(() {
      background1ScrollController
          .jumpTo(timelineScrollController.position.pixels * 0.9);
      background2ScrollController
          .jumpTo(timelineScrollController.position.pixels * 0.8);
      background3ScrollController
          .jumpTo(timelineScrollController.position.pixels * 0.7);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    events = getEvents(); // for hot reload
    return Scaffold(
      body: NotificationListener<ScrollNotification>(
        onNotification: (scrollNotification) {
          if (scrollNotification.metrics.pixels < 402.3) {
            SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
          } else {
            SystemChrome.setEnabledSystemUIOverlays([]);
          }
        },
        child: timelineModelPage(),
      ),
    );
  }

  timelineModelPage() => Timeline.builder(
      controller: timelineScrollController,
      itemBuilder: centerTimelineBuilder,
      itemCount: events.length,
      physics: BouncingScrollPhysics(),
      position: TimelinePosition.Left);

  TimelineModel centerTimelineBuilder(BuildContext context, int i) {
    final event = events[i];
    final textTheme = Theme.of(context).textTheme;
    return TimelineModel(
        GestureDetector(
          onTap: () {
            SystemChrome.setEnabledSystemUIOverlays([]);
            Navigator.push(context, FadeRoute(page: HistoryInfo(event)));
          },
          child: Card(
            margin: EdgeInsets.symmetric(vertical: 16.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)),
            clipBehavior: Clip.antiAlias,
            color: Colors.white60,
            elevation: 0,
            child: Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  SizedBox(
                    height: 8.0,
                  ),
                  event.name != ''
                      ? Text(
                          event.name,
                          style: Theme.of(context).textTheme.headline6,
                          textAlign: TextAlign.left,
                        )
                      : Container(),
                  event.name != ''
                      ? SizedBox(
                          height: 8.0,
                        )
                      : Container(),
                  event.cover != ''
                      ? Text(
                          event.cover,
                          style: Theme.of(context).textTheme.subtitle2,
                          textAlign: TextAlign.center,
                        )
                      : Container(),
                  event.cover != ''
                      ? SizedBox(
                          height: 8.0,
                        )
                      : Container(),
                ],
              ),
            ),
          ),
        ),
        position:
            i % 2 == 0 ? TimelineItemPosition.right : TimelineItemPosition.left,
        isFirst: i == 0,
        isLast: i == events.length,
        iconBackground: event.iconBackground,
        date: event.date,
        subDate: event.subDate);
  }
}
