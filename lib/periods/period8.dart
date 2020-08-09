import 'package:estonian_history/constants.dart';
import 'package:estonian_history/models/event.dart';
import 'package:estonian_history/models/picture.dart';
import 'package:estonian_history/transitions/fade_route.dart';
import 'package:estonian_history/widgets/imageSwiper.dart';
import 'package:estonian_history/widgets/myMap.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

Map<List<Event>, List<Event>> getPeriod8() {
  return {
    [null]: [
      Event(
          name: "",
          date: "1583",
          subDate: "",
          cover: "Tartus avati jesuiitidele gümnaasiumi tasemega kolleegium.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Tartus avati jesuiitidele gümnaasiumi tasemega kolleegium.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1584",
          subDate: "",
          cover: "Valga sai linna õigused.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Valga sai linna õigused.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1585",
          subDate: "",
          cover: "Pljussa vaherahu pikendati 1590. a-ni.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Pljussa vaherahu pikendati 1590. a-ni.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1590–95",
          subDate: "",
          cover: "Vene-Rootsi sõda.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Vene-Rootsi sõda.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1591",
          subDate: "",
          cover: "Katk Eestis.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Katk Eestis.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1595",
          subDate: "5. mai",
          cover: "Täyssinä rahu; Rootsi loovutas Ingerimaa Venemaale.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Täyssinä rahu; Rootsi loovutas Ingerimaa Venemaale.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1600–29",
          subDate: "",
          cover: "Rootsi-Poola sõda Liivimaa pärast.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Rootsi-Poola sõda Liivimaa pärast.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1601–02",
          subDate: "",
          cover: "Nälg ja katk Eestis.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Nälg ja katk Eestis.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1628",
          subDate: "",
          cover:
              "Asutati esimene Eesti klaasikoda (Hüti klaasikoda Hiiumaal, tegutses a-ni 1664).",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Asutati esimene Eesti klaasikoda (Hüti klaasikoda Hiiumaal, tegutses a-ni 1664).',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1629",
          subDate: "16. september",
          cover:
              "Rootsi ja Poola sõlmisid Altmargi vaherahu, kogu Liivimaa sai Rootsile.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Rootsi ja Poola sõlmisid Altmargi vaherahu, kogu Liivimaa sai Rootsile.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
    ]
  };
}
