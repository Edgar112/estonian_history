import 'package:estonian_history/constants.dart';
import 'package:estonian_history/periods/period1.dart';
import 'package:estonian_history/periods/period2.dart';
import 'package:estonian_history/helper/period.dart';
import 'package:estonian_history/periods/period3.dart';
import 'package:estonian_history/screens/history_timeline/history_info.dart';
import 'package:estonian_history/transitions/fade_route.dart';
import 'package:estonian_history/widgets/myDrawer.dart';
import 'package:flutter/material.dart';
import 'package:estonian_history/timeline_list/timeline.dart';
import 'package:estonian_history/timeline_list/timeline_model.dart';
import 'package:estonian_history/helper/event.dart';
import 'package:flutter/services.dart';
import 'package:estonian_history/global.dart';
import 'package:flutter_svg/svg.dart';

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
    SystemChrome.setEnabledSystemUIOverlays([]);

    BouncingScrollPhysics physics = BouncingScrollPhysics();

    List<Period> periods = [
      Period(periodTitle: 'Esiajalugu', events: getPeriod1()),
      Period(
          periodTitle: 'Eesti II a-tuh alguses (a-ni 1208)',
          events: getPeriod2()),
      Period(
          periodTitle: 'Muistne vabadusvõitlus (1208–27)', events: getPeriod3())
    ];
    List<Timeline> timelines = [];
    periods.forEach((period) {
      timelines.add(timelineModelPage(
          new GlobalKey(), physics, period.events, period.periodTitle));
    });

    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            physics: physics,
            controller: background1ScrollController,
            child: Container(
              width: double.infinity,
              child: SvgPicture.asset(
                'assets/illustrations/cosmosBG1.svg',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SingleChildScrollView(
            physics: physics,
            controller: background2ScrollController,
            child: Container(
              width: double.infinity,
              child: SvgPicture.asset(
                'assets/illustrations/cosmosBG2.svg',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SingleChildScrollView(
            physics: physics,
            controller: background3ScrollController,
            child: Container(
              width: double.infinity,
              child: SvgPicture.asset(
                'assets/illustrations/cosmosBG3.svg',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
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
              onPressed: () {},
            ),
          ),
        ],
        backgroundColor: kPrimaryColor,
        floating: false,
        pinned: false,
        expandedHeight: 400,
        flexibleSpace: FlexibleSpaceBar(
          title: Text('Eesti Ajalugu',
              style: Theme.of(context).textTheme.headline5),
          background:
              SvgPicture.asset('assets/illustrations/rocket_boy_dark.svg'),
          collapseMode: CollapseMode.pin,
        ),
      ),
    ];
    view.addAll(timelines);
    return view;
  }

  timelineModelPage(GlobalKey key, BouncingScrollPhysics physics,
      List<Event> events, String periodTitle) {
    return Timeline.builder(
        tKey: key,
        itemBuilder: leftTimelineBuilder,
        events: events,
        itemCount: events.length,
        physics: physics,
        periodTitle: periodTitle);
  }

  TimelineModel leftTimelineBuilder(
      BuildContext context, int i, List<Event> events) {
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
