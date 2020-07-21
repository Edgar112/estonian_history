import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

List<Widget> backgroundIllustration(
    List<ScrollController> bgScrollControllers) {
  return [
    SingleChildScrollView(
      controller: bgScrollControllers[0],
      child: Container(
        width: double.infinity,
        child: SvgPicture.asset(
          'assets/illustrations/cosmosBG1.svg',
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter,
        ),
      ),
    ),
    SingleChildScrollView(
      controller: bgScrollControllers[1],
      child: Container(
        width: double.infinity,
        child: SvgPicture.asset(
          'assets/illustrations/cosmosBG2.svg',
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter,
        ),
      ),
    ),
    SingleChildScrollView(
      controller: bgScrollControllers[2],
      child: Container(
        width: double.infinity,
        child: SvgPicture.asset(
          'assets/illustrations/cosmosBG3.svg',
          fit: BoxFit.fitWidth,
          alignment: Alignment.topCenter,
        ),
      ),
    ),
  ];
}
