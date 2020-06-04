import 'package:estonian_history/data.dart';
import 'package:estonian_history/global.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            reverse: false,
            physics: BouncingScrollPhysics(),
            primary: false,
            controller: backgroundScrollController,
            child: SvgPicture.asset('assets/illustrations/cosmosBG1.svg',
                width: MediaQuery.of(context).size.width),
          ),
          SingleChildScrollView(
            reverse: false,
            physics: BouncingScrollPhysics(),
            primary: false,
            controller: background2ScrollController,
            child: SvgPicture.asset('assets/illustrations/cosmosBG2.svg',
                width: MediaQuery.of(context).size.width),
          ),
          SingleChildScrollView(
            reverse: false,
            physics: BouncingScrollPhysics(),
            primary: false,
            controller: background3ScrollController,
            child: SvgPicture.asset('assets/illustrations/cosmosBG3.svg',
                width: MediaQuery.of(context).size.width),
          ),
          Center(
            child: Text(backgroundScrollController.position.pixels.toString()),
          )
        ],
      ),
    );
  }
}
