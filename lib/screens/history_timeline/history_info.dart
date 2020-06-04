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

  final ScrollController infoBackground1ScrollController = ScrollController();
  final ScrollController infoBackground2ScrollController = ScrollController();
  final ScrollController infoBackground3ScrollController = ScrollController();

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
          Container(
            width: double.infinity,
            height: double.infinity,
            child: Text('ww'),
          )
        ],
      ),
    );
  }
}
