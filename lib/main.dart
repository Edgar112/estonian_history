import 'package:estonian_history/constants.dart';
import 'package:estonian_history/screens/home.dart';
import 'package:estonian_history/widgets/my_behavior.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

Future<void> main() async {
  await precacheSvg();
  runApp(EstonianHistory());
}

Future precacheSvg() async {
  WidgetsFlutterBinding.ensureInitialized();
  await precachePicture(
      ExactAssetPicture(SvgPicture.svgStringDecoder,
          'assets/illustrations/rocket_boy_no_stars.svg'),
      null);
  await precachePicture(
      ExactAssetPicture(
          SvgPicture.svgStringDecoder, 'assets/illustrations/cosmosBG1.svg'),
      null);
  await precachePicture(
      ExactAssetPicture(
          SvgPicture.svgStringDecoder, 'assets/illustrations/cosmosBG2.svg'),
      null);
  await precachePicture(
      ExactAssetPicture(
          SvgPicture.svgStringDecoder, 'assets/illustrations/cosmosBG3.svg'),
      null);
  await precachePicture(
      ExactAssetPicture(SvgPicture.svgStringDecoder,
          'assets/illustrations/maakonnad_small.svg'),
      null);
  await precachePicture(
      ExactAssetPicture(
          SvgPicture.svgStringDecoder, 'assets/illustrations/modern_stars.svg'),
      null);
  await precachePicture(
      ExactAssetPicture(SvgPicture.svgStringDecoder,
          'assets/illustrations/astronaut_no_stars.svg'),
      null);
}

class EstonianHistory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // SystemChrome.setSystemUIOverlayStyle(
    //     SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    SystemChrome.setEnabledSystemUIOverlays([]);
    return MaterialApp(
      builder: (context, child) {
        return ScrollConfiguration(
          behavior: MyBehavior(),
          child: child,
        );
      },
      debugShowCheckedModeBanner: false,
      title: 'Eesti Ajalugu',
      theme: ThemeData(
        primaryIconTheme: IconThemeData(color: kText1Color),
        textTheme: TextTheme(
          caption:
              TextStyle(fontFamily: "Exo2", fontSize: 30, color: kText2Color),
          headline5:
              TextStyle(fontFamily: "Exo2", fontSize: 25, color: kText2Color),
          headline6:
              TextStyle(fontFamily: "Exo2", fontSize: 20, color: kText2Color),
          subtitle1:
              TextStyle(fontFamily: "Exo2", fontSize: 17, color: kText2Color),
          subtitle2:
              TextStyle(fontFamily: "Exo2", fontSize: 15, color: kText2Color),
          bodyText1:
              TextStyle(fontFamily: "Exo2", fontSize: 14, color: kText2Color),
          bodyText2:
              TextStyle(fontFamily: "Exo2", fontSize: 10, color: kText2Color),
        ),
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      home: Home(),
    );
  }
}
