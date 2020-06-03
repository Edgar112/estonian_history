import 'package:estonian_history/screens/history_timeline/history_info.dart';
import 'package:estonian_history/timeline_list/src/timeline_item.dart';
import 'package:estonian_history/transitions/fade_route.dart';
import 'package:flutter/material.dart';
import 'package:estonian_history/timeline_list/timeline.dart';
import 'package:estonian_history/timeline_list/timeline_model.dart';
import 'package:estonian_history/data.dart';
import 'package:estonian_history/constants.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:estonian_history/global.dart';

void main() => runApp(HistoryTimeline());

class HistoryTimeline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'empty',
      theme: ThemeData(
        textTheme: GoogleFonts.reemKufiTextTheme(Theme.of(context).textTheme),
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      home: TimelinePage(title: 'empty'),
    );
  }
}

class TimelinePage extends StatefulWidget {
  TimelinePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _TimelinePageState createState() => _TimelinePageState();
}

class _TimelinePageState extends State<TimelinePage> {
  final PageController pageController =
      PageController(initialPage: 1, keepPage: true);
  int pageIx = 1;

  final ScrollController timelineScrollController = ScrollController();
  @override
  void initState() {
    timelineScrollController.addListener(() {
      backgroundScrollController
          .jumpTo(timelineScrollController.position.pixels);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotificationListener<ScrollNotification>(
          onNotification: (scrollNotification) {
            if (scrollNotification.metrics.pixels < 402.3) {
              SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
            } else {
              SystemChrome.setEnabledSystemUIOverlays([]);
            }
          },
          child: timelineModelPage()),
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
          Navigator.push(context, FadeRoute(page: HistoryInfo(event)));
        },
        child: Opacity(
          opacity: 0.6,
          child: Card(
            margin: EdgeInsets.symmetric(vertical: 16.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)),
            clipBehavior: Clip.antiAlias,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    event.name,
                    style: textTheme.headline6,
                    textAlign: TextAlign.left,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Text(
                    event.content,
                    style: textTheme.subtitle2,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      position:
          i % 2 == 0 ? TimelineItemPosition.right : TimelineItemPosition.left,
      isFirst: i == 0,
      isLast: i == events.length,
      iconBackground: event.iconBackground,
      year: event.year,
    );
  }
}
