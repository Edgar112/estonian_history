import 'package:estonian_history/components/backgroundIllustration.dart';
import 'package:estonian_history/constants.dart';
import 'package:estonian_history/periods/period1.dart';
import 'package:estonian_history/periods/period10.dart';
import 'package:estonian_history/periods/period11.dart';
import 'package:estonian_history/periods/period12.dart';
import 'package:estonian_history/periods/period2.dart';
import 'package:estonian_history/models/period.dart';
import 'package:estonian_history/periods/period3.dart';
import 'package:estonian_history/periods/period4.dart';
import 'package:estonian_history/periods/period5.dart';
import 'package:estonian_history/periods/period6.dart';
import 'package:estonian_history/periods/period7.dart';
import 'package:estonian_history/periods/period8.dart';
import 'package:estonian_history/periods/period9.dart';
import 'package:estonian_history/screens/history_timeline/history_info.dart';
import 'package:estonian_history/screens/info.dart';
import 'package:estonian_history/transitions/fade_route.dart';
import 'package:estonian_history/widgets/myDrawer.dart';
import 'package:flutter/material.dart';
import 'package:estonian_history/timeline_list/timeline.dart';
import 'package:estonian_history/timeline_list/timeline_model.dart';
import 'package:estonian_history/models/event.dart';
import 'package:flutter/services.dart';
import 'package:estonian_history/global.dart';
import 'package:flutter_svg/svg.dart';
import 'package:page_transition/page_transition.dart';

class HistoryTimeline extends StatefulWidget {
  HistoryTimeline({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _HistoryTimelineState createState() => _HistoryTimelineState();
}

class _HistoryTimelineState extends State<HistoryTimeline> {
  BouncingScrollPhysics physics = BouncingScrollPhysics();

  List<Period> periods;

  List<Timeline> timelines;

  @override
  void initState() {
    timelineScrollController.addListener(() {
      background1ScrollController
          .jumpTo(timelineScrollController.position.pixels * 0.9);
      background2ScrollController
          .jumpTo(timelineScrollController.position.pixels * 0.8);
      background3ScrollController
          .jumpTo(timelineScrollController.position.pixels * 0.7);
      // print(timelineScrollController.position.pixels);
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    periods = [
      Period(periodTitle: 'Esiajalugu', events: getPeriod1()),
      Period(
          periodTitle: 'Eesti II a-tuh alguses (a-ni 1208)',
          events: getPeriod2()),
      Period(
          periodTitle: 'Muistne vabadusvõitlus (1208–27)',
          events: getPeriod3()),
      Period(
          periodTitle: 'Võõrvõimu algussajand (1227–1343)',
          events: getPeriod4()),
      Period(periodTitle: 'Jüriöö ülestõus (1343–45)', events: getPeriod5()),
      Period(periodTitle: 'Vana-Liivimaa (1345–1558)', events: getPeriod6()),
      Period(periodTitle: 'Vene-Liivimaa sõda (1558–83)', events: getPeriod7()),
      Period(
          periodTitle: 'Rootsi, Poola ja Taani võimu all (1583–1629)',
          events: getPeriod8()),
      Period(periodTitle: 'Rootsi aeg (1629–1710)', events: getPeriod9()),
      Period(periodTitle: 'Põhjasõda Eestis (1700–10)', events: getPeriod10()),
      //////////////////////////////////////////////////////////////////////////////////////////////////

      Period(periodTitle: '', events: getPeriod11()),
      Period(periodTitle: '', events: getPeriod12()),
      // Period(periodTitle: '', events: getPeriod13()),
      // Period(periodTitle: '', events: getPeriod14()),
      // Period(periodTitle: '', events: getPeriod15()),
      // Period(periodTitle: '', events: getPeriod16()),
      // Period(periodTitle: '', events: getPeriod17()),
      // Period(periodTitle: '', events: getPeriod18()),
    ];
    timelines = [];

    periods.forEach((period) {
      timelines.add(timelineModelPage(
          new GlobalKey(), physics, period.events, period.periodTitle));
    });

    return Scaffold(
      drawerScrimColor: Colors.transparent,
      body: Stack(
        children: <Widget>[
          Stack(
              children: backgroundIllustration([
            background1ScrollController,
            background2ScrollController,
            background3ScrollController
          ])),
          CustomScrollView(
            physics: physics,
            controller: timelineScrollController,
            slivers: timelineView(timelines),
          ),
        ],
      ),
      drawer: MyDrawer(periods, timelines),
    );
  }

  List<Widget> timelineView(List<Timeline> timelines) {
    List<Widget> view = [
      SliverAppBar(
        brightness: Brightness.light,
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Icon(
                Icons.info_outline,
                color: kText1Color,
              ),
              tooltip: 'Info',
              onPressed: () {
                Navigator.push(
                  context,
                  PageTransition(
                    type: PageTransitionType.fade,
                    child: Info(),
                  ),
                );
              },
            ),
          ),
        ],
        backgroundColor: Colors.transparent,
        floating: false,
        pinned: false,
        expandedHeight: 400,
        flexibleSpace: FlexibleSpaceBar(
          title: Text('Eesti Ajalugu',
              style: Theme.of(context).textTheme.headline5),
          background:
              SvgPicture.asset('assets/illustrations/rocket_boy_no_stars.svg'),
          collapseMode: CollapseMode.pin,
        ),
      ),
    ];
    view.addAll(timelines);
    return view;
  }

  timelineModelPage(GlobalKey key, BouncingScrollPhysics physics,
      Map<List<Event>, List<Event>> events, String periodTitle) {
    return Timeline.builder(
        tKey: key,
        itemBuilder: leftTimelineBuilder,
        events: events,
        itemCount: events.values.toList()[0].length,
        physics: physics,
        periodTitle: periodTitle);
  }

  TimelineModel leftTimelineBuilder(
      BuildContext context, int i, Map<List<Event>, List<Event>> events) {
    final event = events.values.toList()[0][i];
    final textTheme = Theme.of(context).textTheme;
    return TimelineModel(
        GestureDetector(
          onTap: () {
            Navigator.push(context, FadeRoute(page: HistoryInfo(event)));
          },
          child: Card(
            margin: EdgeInsets.symmetric(vertical: 16.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)),
            clipBehavior: Clip.antiAlias,
            color: Colors.white60,
            elevation: 0,
            child: Stack(
              children: [
                event.more
                    ? Positioned(
                        child: Opacity(
                          child: Container(
                              margin: EdgeInsets.only(left: 5, top: 5),
                              child: Icon(
                                Icons.add,
                                color: kText2Color,
                                size: 15,
                              )),
                          opacity: 0.2,
                        ),
                      )
                    : Container(),
                Padding(
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
                              style: textTheme.headline6,
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
                              style: textTheme.subtitle2,
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
              ],
            ),
          ),
        ),
        isFirst: i == 0,
        isLast: i == events.length,
        iconBackground: event.iconBackground,
        date: event.date,
        subDate: event.subDate);
  }
}
