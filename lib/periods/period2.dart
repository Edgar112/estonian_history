import 'package:estonian_history/constants.dart';
import 'package:estonian_history/helper/event.dart';
import 'package:estonian_history/global.dart';
import 'package:estonian_history/helper/picture.dart';
import 'package:estonian_history/widgets/imageSwiper.dart';
import 'package:estonian_history/widgets/myMap.dart';
import 'package:estonian_history/transitions/fade_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<Event> getPeriod2() {
  return [
    Event(
        name: "",
        date: "1030",
        subDate: "",
        cover:
            "Jaroslav Targa sõjavägi vallutas Tarbatu (Tartu) linnuse ning Kagu-Eesti; eestlaste maksustamine; võimalikud ristiusu mõjud; Tartu esmakordne mainimine kirjasõnas (Jurjev).",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <InlineSpan>[
                TextSpan(
                    text:
                        'Jaroslav Targa sõjavägi vallutas Tarbatu (Tartu) linnuse ning Kagu-Eesti; eestlaste maksustamine; võimalikud ristiusu mõjud; Tartu esmakordne mainimine kirjasõnas (Jurjev).\n\n',
                    style: TextStyle(
                        fontSize: 25, color: kText2Color.withOpacity(0.6))),
                WidgetSpan(
                    child: ImageSwiper([
                  Picture(
                      'Jaroslav Tark', 'assets/illustrations/Jaroslav Tark.jpg')
                ]))
              ]),
        ),
        more: true,
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "",
        subDate: "",
        cover: "",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <InlineSpan>[
                TextSpan(
                    text: '',
                    style: TextStyle(
                        fontSize: 25, color: kText2Color.withOpacity(0.6))),
              ]),
        ),
        iconBackground: Colors.transparent),
  ];
}
