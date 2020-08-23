import 'dart:ui';

import 'package:Eesti_Ajalugu/constants.dart';
import 'package:Eesti_Ajalugu/global.dart';
import 'package:Eesti_Ajalugu/models/period.dart';
import 'package:Eesti_Ajalugu/timeline_list/timeline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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

class _MyDrawerState extends State<MyDrawer> with TickerProviderStateMixin {
  List<Period> periods;
  List<Timeline> timelines;

  _MyDrawerState(this.periods, this.timelines);

  double drawerOpacity = 1.0;
  double lastPadding = 0;

  GlobalKey drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: drawerOpacity,
      child: Drawer(
        key: drawerKey,
        child: Container(
          color: kPrimaryColor,
          child: Stack(
            children: <Widget>[
              SvgPicture.asset(
                'assets/illustrations/modern_stars.svg',
                fit: BoxFit.fitWidth,
                width: double.infinity,
                alignment: Alignment.bottomCenter,
              ),
              CustomScrollView(slivers: <Widget>[
                header(),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, i) {
                      lastPadding = 0;
                      if (i == periods.length - 1) lastPadding = 50;
                      return item(periods[i], i);
                    },
                    childCount: periods.length,
                  ),
                ),
              ]),
            ],
          ),
        ),
      ),
    );
  }

  SliverAppBar header() {
    return SliverAppBar(
        brightness: Brightness.light,
        backgroundColor: kPrimaryColor,
        elevation: 0.5,
        pinned: true,
        expandedHeight: 260,
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          title: Text('Ajaperioodid',
              style: Theme.of(context).textTheme.headline5),
          background: Container(
            child: SvgPicture.asset(
              'assets/illustrations/maakonnad_small.svg',
              fit: BoxFit.fitWidth,
              color: kImageSecondaryColor,
            ),
          ),
          collapseMode: CollapseMode.pin,
        ),
        leading: Container(
          padding: null,
          margin: null,
        )); // to remove drawer iconButton
  }

  Widget item(Period period, int i) {
    return Container(
      padding: EdgeInsets.only(bottom: lastPadding),
      child: Column(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              setState(() {
                isBlur = true;
                drawerOpacity = 0.0;
              });

              Navigator.of(context).pop();
              blurAnimationController.forward().whenComplete(() async {
                scrollToKey(i);
              });
            },
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              child: ListTile(
                title: Text(
                  period.periodTitle,
                  style: TextStyle(fontSize: 20, color: kText2Color),
                ),
              ),
            ),
          ),
          spaceLine()
        ],
      ),
    );
  }

  spaceLine() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Container(
        height: 0.2,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kText1Color.withOpacity(0.2),
          borderRadius: BorderRadius.circular(30),
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
