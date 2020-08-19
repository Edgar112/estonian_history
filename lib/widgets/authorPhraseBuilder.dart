import 'package:flutter/material.dart';

enum PhraseSide { left, right }

class AuthorPhraseBuilder extends StatefulWidget {
  final String phrase;
  final Duration showDelay;
  PhraseSide phraseSide;
  AuthorPhraseBuilder(
      {this.phrase, this.showDelay, this.phraseSide = PhraseSide.left});

  @override
  AuthorPhraseBuilderState createState() => AuthorPhraseBuilderState(
      phrase: phrase, showDelay: showDelay, phraseSide: phraseSide);
}

class AuthorPhraseBuilderState extends State<AuthorPhraseBuilder>
    with TickerProviderStateMixin {
  Animation<Offset> phraseCurve;
  AnimationController phraseAnimController;
  final String phrase;
  final Duration showDelay;
  PhraseSide phraseSide;
  Animation<Offset> fillCurve;
  AnimationController fillAnimController;

  AuthorPhraseBuilderState(
      {this.phrase, this.showDelay, this.phraseSide = PhraseSide.left});
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      // to get context
      phraseAnimController =
          AnimationController(vsync: this, duration: Duration(seconds: 1))
            ..addListener(() {
              setState(() {});
            });

      Offset beginningOffset = Offset(
          phraseSide.index == 0
              ? -MediaQuery.of(context).size.width
              : MediaQuery.of(context).size.width,
          0.0);
      phraseCurve = Tween<Offset>(begin: beginningOffset, end: Offset.zero)
          .animate(CurvedAnimation(
              parent: phraseAnimController, curve: Curves.bounceOut));
      Future.delayed(showDelay, () {
        phraseAnimController.forward();
      });
      ///////////////////////////////////////////////////////////////////////
      fillAnimController =
          AnimationController(vsync: this, duration: Duration(seconds: 1))
            ..addListener(() {
              setState(() {});
            });

      fillCurve = Tween<Offset>(begin: -beginningOffset, end: Offset.zero)
          .animate(CurvedAnimation(
              parent: fillAnimController, curve: Curves.bounceOut));
      Future.delayed(showDelay + Duration(milliseconds: 500), () {
        fillAnimController.forward();
      });

      print(MediaQuery.of(context).size.width);
    });
  }

  @override
  void dispose() {
    super.dispose();
    phraseAnimController.dispose();
    fillAnimController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      if (phraseCurve == null) {
        return Container();
      }
      return Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: phraseSide.index == 1
              ? MainAxisAlignment.start
              : MainAxisAlignment.end,
          children: [
            phraseSide.index == 1 ? fillBox() : Container(),
            Transform.translate(
              offset: phraseCurve.value,
              child: Container(
                width: MediaQuery.of(context).size.width / 1.4,
                height: 80,
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  border: Border(
                    top: BorderSide(width: 1.0, color: Colors.white),
                    bottom: BorderSide(width: 1.0, color: Colors.white),
                    left: phraseSide.index == 1
                        ? BorderSide(width: 1.0, color: Colors.white)
                        : BorderSide(),
                    right: phraseSide.index == 0
                        ? BorderSide(width: 1.0, color: Colors.white)
                        : BorderSide(),
                  ),
                ),
                child: Container(
                  alignment: Alignment.center,
                  child: Text(phrase,
                      style: TextStyle(
                          fontSize: 40,
                          fontFamily: "Blox2",
                          color: Colors.white,
                          letterSpacing: 7)),
                ),
              ),
            ),
            phraseSide.index == 0 ? fillBox() : Container(),
          ],
        ),
      );
    });
  }

  Widget fillBox() {
    return Transform.translate(
      offset: fillCurve.value,
      child: Container(
        width: MediaQuery.of(context).size.width -
            MediaQuery.of(context).size.width / 1.4,
        height: 80,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.5),
          border: Border(
            top: BorderSide(width: 1.0, color: Colors.white),
            bottom: BorderSide(width: 1.0, color: Colors.white),
            left: phraseSide.index == 0
                ? BorderSide(width: 1.0, color: Colors.white)
                : BorderSide(),
            right: phraseSide.index == 1
                ? BorderSide(width: 1.0, color: Colors.white)
                : BorderSide(),
          ),
        ),
      ),
    );
  }
}
