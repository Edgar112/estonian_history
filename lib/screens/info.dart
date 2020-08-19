import 'dart:ui';

import 'package:estonian_history/components/backgroundIllustration.dart';
import 'package:estonian_history/constants.dart';
import 'package:estonian_history/screens/info/author.dart';
import 'package:estonian_history/global.dart';
import 'package:estonian_history/widgets/circleAnimation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Info extends StatefulWidget {
  Info({Key key}) : super(key: key);

  @override
  _InfoState createState() => _InfoState();
}

class _InfoState extends State<Info> with SingleTickerProviderStateMixin {
  final ScrollController infoBackground1ScrollController = ScrollController();
  final ScrollController infoBackground2ScrollController = ScrollController();
  final ScrollController infoBackground3ScrollController = ScrollController();
  bool showCircleAnimation = false;
  bool disableAll = false;
  bool canShowAutorContent = true;

  double _fraction = 0.0;
  Animation<double> _animation;

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
    circleAnimationController = AnimationController(
        duration: Duration(milliseconds: 2000), vsync: this);

    _animation = Tween(begin: 1.0, end: 0.0).animate(circleAnimationController)
      ..addListener(() {
        setState(() {
          _fraction = _animation.value;
        });
        if (_fraction < 0.4 && canShowAutorContent) {
          // canShowAutorContent to prevent infinite loop

          circleAnimationController.stop();
          Navigator.push(
            context,
            PageRouteBuilder(
              pageBuilder: (_, __, ___) => Author(),
              transitionDuration: Duration(seconds: 0),
            ),
          ).whenComplete(() {
            // bgAnimationController.forward().;
            canShowAutorContent = false;
            setState(() {
              disableAll = false;
            });
            circleAnimationController.reverse().whenComplete(() {
              showCircleAnimation = false;
              canShowAutorContent = true;
            });
          });
        }
      });
  }

  @override
  void dispose() {
    super.dispose();
    circleAnimationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    double screenValue = height;
    if (width > height) {
      screenValue = width;
    }
    return Scaffold(
      body: Container(
          child: Stack(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Stack(
                  children: backgroundIllustration([
                infoBackground1ScrollController,
                infoBackground2ScrollController,
                infoBackground3ScrollController
              ])),
              Center(
                child: ClipRect(
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 5.0,
                      sigmaY: 5.0,
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
                    backgroundColor: Colors.transparent,
                    floating: false,
                    pinned: false,
                    expandedHeight: 340,
                    flexibleSpace: FlexibleSpaceBar(
                      title: Text('',
                          style: Theme.of(context).textTheme.headline5),
                      background: Container(
                        alignment: Alignment.bottomCenter,
                        child: SvgPicture.asset(
                            'assets/illustrations/astronaut_no_stars.svg'),
                      ),
                      collapseMode: CollapseMode.pin,
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildListDelegate([
                      Center(
                        child: Container(
                          alignment: Alignment.topCenter,
                          margin: EdgeInsets.only(bottom: 200),
                          width: 330,
                          child: Card(
                            margin: EdgeInsets.all(15),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16.0)),
                            elevation: 0,
                            color: Colors.transparent,
                            child: Column(
                              children: <Widget>[
                                SizedBox(height: 10),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 20),
                                  child: OutlineButton(
                                      child: Container(
                                        width: 200,
                                        height: 65,
                                        alignment: Alignment.center,
                                        child: RichText(
                                          text: TextSpan(
                                              style: TextStyle(
                                                  fontFamily: 'Exo2',
                                                  color: kText1Color),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'Allikad',
                                                  style: TextStyle(
                                                    fontSize: 40,
                                                  ),
                                                ),
                                              ]),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      borderSide:
                                          BorderSide(color: kText1Color),
                                      highlightedBorderColor: kText1Color,
                                      splashColor: Colors.white,
                                      onPressed: () {},
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16.0))),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 20),
                                  child: OutlineButton(
                                      child: Container(
                                        width: 200,
                                        height: 65,
                                        alignment: Alignment.center,
                                        child: RichText(
                                          text: TextSpan(
                                              style: TextStyle(
                                                  fontFamily: 'Exo2',
                                                  color: kText1Color),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'GitHub',
                                                  style: TextStyle(
                                                    fontSize: 40,
                                                  ),
                                                ),
                                              ]),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      borderSide:
                                          BorderSide(color: kText1Color),
                                      highlightedBorderColor: kText1Color,
                                      splashColor: Colors.white,
                                      onPressed: () {},
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16.0))),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 20),
                                  child: OutlineButton(
                                      child: Container(
                                        width: 200,
                                        height: 65,
                                        alignment: Alignment.center,
                                        child: RichText(
                                          text: TextSpan(
                                              style: TextStyle(
                                                  fontFamily: 'Exo2',
                                                  color: kText1Color),
                                              children: <TextSpan>[
                                                TextSpan(
                                                  text: 'Litsents',
                                                  style: TextStyle(
                                                    fontSize: 40,
                                                  ),
                                                ),
                                              ]),
                                          textAlign: TextAlign.center,
                                        ),
                                      ),
                                      borderSide:
                                          BorderSide(color: kText1Color),
                                      highlightedBorderColor: kText1Color,
                                      splashColor: Colors.white,
                                      onPressed: () {},
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16.0))),
                                ),
                                Container(
                                  margin: EdgeInsets.symmetric(vertical: 20),
                                  child: FlatButton(
                                    child: Container(
                                      width: 200,
                                      height: 65,
                                      alignment: Alignment.center,
                                      child: RichText(
                                        text: TextSpan(
                                            style: TextStyle(
                                                fontFamily: 'Exo2',
                                                color: Colors.white),
                                            children: <TextSpan>[
                                              TextSpan(
                                                text: 'Autor',
                                                style: TextStyle(
                                                  fontSize: 40,
                                                ),
                                              ),
                                            ]),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    color: Colors.black,
                                    splashColor: Colors.white,
                                    onPressed: () {
                                      if (!circleAnimationController
                                          .isAnimating) {
                                        setState(() {
                                          disableAll = true;
                                          showCircleAnimation = true;
                                          circleAnimationController.forward();
                                        });
                                      }
                                    },
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16.0)),
                                  ),
                                ),
                                SizedBox(height: 10),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
            ],
          ),
          disableAll
              ? Container(
                  color: Colors.transparent,
                  child: showCircleAnimation
                      ? Center(
                          child: CustomPaint(
                            painter: CirclePainter(
                                fraction: _fraction, screenValue: screenValue),
                          ),
                        )
                      : Container())
              : showCircleAnimation
                  ? Center(
                      child: CustomPaint(
                        painter: CirclePainter(
                            fraction: _fraction, screenValue: screenValue),
                      ),
                    )
                  : Container()
        ],
      )),
    );
  }
}
