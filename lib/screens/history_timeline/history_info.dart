import 'package:estonian_history/constants.dart';
import 'package:estonian_history/event/event.dart';
import 'package:estonian_history/global.dart';
import 'package:estonian_history/myMap.dart';
import 'package:estonian_history/transitions/fade_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'dart:ui';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:async';

import 'package:google_fonts/google_fonts.dart';

class HistoryInfo extends StatefulWidget {
  Event event;
  HistoryInfo(this.event);

  @override
  _HistoryInfoState createState() => _HistoryInfoState(event);
}

class _HistoryInfoState extends State<HistoryInfo> {
  Event event;
  _HistoryInfoState(this.event);

  final ScrollController infoBackground1ScrollController = ScrollController();
  final ScrollController infoBackground2ScrollController = ScrollController();
  final ScrollController infoBackground3ScrollController = ScrollController();
  double textlen;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      infoBackground1ScrollController
          .jumpTo(background1ScrollController.position.pixels);
      infoBackground2ScrollController
          .jumpTo(background2ScrollController.position.pixels);
      infoBackground3ScrollController
          .jumpTo(background3ScrollController.position.pixels);
    });
  }

  @override
  Widget build(BuildContext context) {
    contextHistoryInfo = context;
    // RenderParagraph renderParagraph = RenderParagraph(
    //   TextSpan(
    //     text: event.cover,
    //     style:
    //         TextStyle(fontSize: Theme.of(context).textTheme.headline6.fontSize),
    //   ),
    //   textDirection: TextDirection.ltr,
    // );
    // textlen = renderParagraph
    //     .getMinIntrinsicWidth(Theme.of(context).textTheme.headline6.fontSize)
    //     .ceilToDouble();
    return Scaffold(
      body: Stack(
        children: <Widget>[
          SingleChildScrollView(
            reverse: false,
            physics: BouncingScrollPhysics(),
            primary: false,
            controller: infoBackground1ScrollController,
            child: Container(
              width: double.infinity,
              child: SvgPicture.asset(
                'assets/illustrations/cosmosBG1.svg',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SingleChildScrollView(
            reverse: false,
            physics: BouncingScrollPhysics(),
            primary: false,
            controller: infoBackground2ScrollController,
            child: Container(
              width: double.infinity,
              child: SvgPicture.asset(
                'assets/illustrations/cosmosBG2.svg',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          SingleChildScrollView(
            reverse: false,
            physics: BouncingScrollPhysics(),
            primary: false,
            controller: infoBackground3ScrollController,
            child: Container(
              width: double.infinity,
              child: SvgPicture.asset(
                'assets/illustrations/cosmosBG3.svg',
                fit: BoxFit.fitWidth,
              ),
            ),
          ),
          Center(
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(
                  sigmaX: 8.0,
                  sigmaY: 8.0,
                ),
                child: Container(
                  alignment: Alignment.center,
                  width: double.infinity,
                  height: double.infinity,
                  child: Text(' '), //without Text, blur doesn't work
                ),
              ),
            ),
          ),
          CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: <Widget>[
              SliverAppBar(
                brightness: Brightness.light,
                iconTheme: IconThemeData(
                  color: kText2Color,
                ),
                // expandedHeight: 50,
                elevation: 0,
                floating: true,
                snap: true,
                forceElevated: true,
                title: Text(event.subDate + " " + event.date,
                    style: Theme.of(context).textTheme.headline5),
                backgroundColor: kPrimaryColor.withOpacity(0.0),
                flexibleSpace: Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Container(),
                  ),
                ),
              ),
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (c, i) {
                    return Column(
                      children: <Widget>[
                        Container(
                          // width: double.infinity,
                          child: Opacity(
                            opacity: 0.5,
                            child: Card(
                              margin: EdgeInsets.all(15),
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      new BorderRadius.circular(16.0)),
                              elevation: 0,
                              color: Colors.white,
                              child: Container(
                                  padding: EdgeInsets.all(20),
                                  child: event.text),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                  childCount: 1,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  final Completer<GoogleMapController> _mapController = Completer();
  Future _mapFuture = Future.delayed(Duration(milliseconds: 250), () => true);

  Widget _buildMap() {
    return FutureBuilder(
      future: _mapFuture,
      builder: (context, snapshot) {
        if (!snapshot.hasData) {
          print("empty");
        }

        return GoogleMap(
          initialCameraPosition: CameraPosition(
            target: LatLng(37.77483, -122.41942),
            zoom: 12,
          ),
          onMapCreated: (GoogleMapController controller) {
            _mapController.complete(controller);
          },
        );
      },
    );
  }
}
