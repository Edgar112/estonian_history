import 'dart:math';

import 'package:delayed_display/delayed_display.dart';
import 'package:estonian_history/global.dart';
import 'package:estonian_history/widgets/authorPhraseBuilder.dart';
import 'package:estonian_history/widgets/physics.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Author extends StatefulWidget {
  Author({Key key}) : super(key: key);

  @override
  _AuthorState createState() => _AuthorState();
}

class _AuthorState extends State<Author> with TickerProviderStateMixin {
  List<String> authorChars = [
    'e',
    'd',
    'g',
    'a',
    'r',
    ' ',
    'v',
    'a',
    's',
    'l',
    'i'
  ];
  List<Widget> authorCharWidgets = [];
  Random rand = Random();
  Animation<Offset> nameCurve;
  AnimationController nameAnimController;
  double nameContainerHeight = 250;
  Animation<Offset> bottomCurve;
  AnimationController bottomAnimController;
  Animation<Offset> backCurve;
  AnimationController backAnimController;

  @override
  void initState() {
    super.initState();
    authorChars.forEach((char) {
      //random chars to uppercase
      if (rand.nextDouble() > 0.5) {
        authorChars[authorChars.indexOf(char)] = char.toUpperCase();
      }
    });
    authorChars.forEach((char) {
      authorCharWidgets.add(
        Text(char,
            style: TextStyle(
                fontSize: 40, fontFamily: "Blox2", color: Colors.white)),
      );
    });

    bgAnimationController =
        AnimationController(vsync: this, duration: Duration(seconds: 3))
          ..addListener(() {
            setState(() {});
          });

    bgAnimation =
        Tween<double>(begin: 0, end: 0.5).animate(bgAnimationController);
    bgAnimationController.forward();
    ///////////////////////////////////////////////////////////////////////
    Future.delayed(Duration.zero, () {
      Offset beginningOffset = Offset(0.0, -nameContainerHeight - 50);
      nameAnimController =
          AnimationController(vsync: this, duration: Duration(seconds: 1))
            ..addListener(() {
              setState(() {});
            });

      nameCurve = Tween<Offset>(begin: beginningOffset, end: Offset.zero)
          .animate(CurvedAnimation(
              parent: nameAnimController, curve: Curves.bounceOut));
      Future.delayed(Duration(milliseconds: 7000), () {
        nameAnimController.forward();
      });
      ///////////////////////////////////////////////////////////////////////
      Offset bottomOffset = Offset(
        0.0,
        MediaQuery.of(context).size.height,
      );
      bottomAnimController =
          AnimationController(vsync: this, duration: Duration(seconds: 1))
            ..addListener(() {
              setState(() {});
            });

      bottomCurve = Tween<Offset>(begin: bottomOffset, end: Offset.zero)
          .animate(CurvedAnimation(
              parent: bottomAnimController, curve: Curves.bounceOut));
      Future.delayed(Duration(milliseconds: 5600), () {
        bottomAnimController.forward();
      });
      ///////////////////////////////////////////////////////////////////////
      Offset backOffset = Offset(
        -200.0,
        0.0,
      );
      backAnimController =
          AnimationController(vsync: this, duration: Duration(seconds: 1))
            ..addListener(() {
              setState(() {});
            });

      backCurve = Tween<Offset>(begin: backOffset, end: Offset.zero).animate(
          CurvedAnimation(parent: backAnimController, curve: Curves.bounceOut));
      Future.delayed(Duration(milliseconds: 8000), () {
        backAnimController.forward();
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    nameAnimController.dispose();
    bottomAnimController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Opacity(
            opacity: bgAnimation.value,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/illustrations/rain.png'),
                    repeat: ImageRepeat.repeat),
              ),
            ),
          ),
          CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Builder(builder: (context) {
                          if (nameCurve == null) {
                            return Container();
                          }
                          return Transform.translate(
                            offset: nameCurve.value,
                            child: Container(
                              alignment: Alignment.bottomCenter,
                              height: nameContainerHeight,
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.5),
                                border: Border(
                                  bottom: BorderSide(
                                      width: 1.0, color: Colors.white),
                                ),
                              ),
                              padding: EdgeInsets.only(bottom: 20),
                              child: Text(
                                'njuhdev@gmail.com',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontFamily: "Exo2",
                                    color: Colors.white,
                                    letterSpacing: 7),
                              ),
                            ),
                          );
                        }),
                        Builder(builder: (context) {
                          if (backCurve == null) {
                            return Container();
                          }
                          return Transform.translate(
                            offset: backCurve.value,
                            child: Container(
                              margin: EdgeInsets.only(top: 40, left: 10),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Text(
                                  '<--',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontFamily: "Blox2",
                                      color: Colors.white,
                                      letterSpacing: 7),
                                ),
                              ),
                            ),
                          );
                        }),
                        PhysicsAnimation(
                          authorCharWidgets,
                        ),
                      ],
                    ),
                    //would like to find a Flutter job

                    AuthorPhraseBuilder(
                        phrase: 'Would',
                        showDelay: Duration(milliseconds: 3400),
                        phraseSide: PhraseSide.left),
                    AuthorPhraseBuilder(
                        phrase: 'like',
                        showDelay: Duration(milliseconds: 4000),
                        phraseSide: PhraseSide.right),
                    AuthorPhraseBuilder(
                        phrase: 'tO',
                        showDelay: Duration(milliseconds: 3600),
                        phraseSide: PhraseSide.left),
                    AuthorPhraseBuilder(
                        phrase: 'FiNd',
                        showDelay: Duration(milliseconds: 4600),
                        phraseSide: PhraseSide.right),
                    AuthorPhraseBuilder(
                        phrase: 'a',
                        showDelay: Duration(milliseconds: 4400),
                        phraseSide: PhraseSide.left),
                    AuthorPhraseBuilder(
                        phrase: 'Flutter',
                        showDelay: Duration(milliseconds: 3000),
                        phraseSide: PhraseSide.right),
                    AuthorPhraseBuilder(
                        phrase: 'Job',
                        showDelay: Duration(milliseconds: 5000),
                        phraseSide: PhraseSide.left),
                    Builder(builder: (context) {
                      if (bottomCurve == null) {
                        return Container();
                      }
                      return Expanded(
                        child: Transform.translate(
                          offset: bottomCurve.value,
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.black.withOpacity(0.5),
                              border: Border(
                                top:
                                    BorderSide(width: 1.0, color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      );
                    }),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

// height: MediaQuery.of(context).size.height,
// width: MediaQuery.of(context).size.width,
