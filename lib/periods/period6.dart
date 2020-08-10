import 'package:estonian_history/constants.dart';
import 'package:estonian_history/models/event.dart';
import 'package:estonian_history/models/picture.dart';
import 'package:estonian_history/transitions/fade_route.dart';
import 'package:estonian_history/widgets/imageSwiper.dart';
import 'package:estonian_history/widgets/myMap.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

import 'package:google_maps_flutter/google_maps_flutter.dart';

Map<List<Event>, List<Event>> getPeriod6() {
  return {
    [null]: [
      Event(
          name: "",
          date: "1345",
          subDate: "",
          cover: "Narva sai linna õigused; algas Maasi ordulinnuse ehitamine.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Narva sai linna õigused; algas Maasi ordulinnuse ehitamine.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1346",
          subDate: "29. august",
          cover:
              "Taani kuningas müüs 19 000 marga (400–500 kg hõbedat) eest Põhja-Eesti Saksa Ordule.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Taani kuningas müüs 19 000 marga (400–500 kg hõbedat) eest Põhja-Eesti Saksa Ordule.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1396",
          subDate: "",
          cover:
              "Tartu piiskopi Theodericus III (Damerow) sõda ordu vastu; vitaalivendade tulek Tartusse.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Tartu piiskopi Theodericus III (Damerow) sõda ordu vastu; vitaalivendade tulek Tartusse.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1396",
          subDate: "juuli–november",
          cover: "Orduvägi rüüstas Tartumaad.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Orduvägi rüüstas Tartumaad.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1397",
          subDate: "13. juuli",
          cover:
              "Saksa Ordu kõrgmeister Konrad von Jungingen andis Harju- ja Virumaa vasallidele nn armuõiguse, millega nende õigusi laiendati.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Saksa Ordu kõrgmeister Konrad von Jungingen andis Harju- ja Virumaa vasallidele nn armuõiguse, millega nende õigusi laiendati.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1407",
          subDate: "5. mai",
          cover: "Pirita kloostri esmamaining.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Pirita kloostri esmamaining.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1422",
          subDate: "",
          cover:
              "Valka kogunes esimene Vana-Liivimaa maapäev, osa võtsid ordu, läänimeeste (mõisnike), vaimulike ja linnade esindajad; maapäevast sai Vana-Liivimaa elu juhtiv organ.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Valka kogunes esimene Vana-Liivimaa maapäev, osa võtsid ordu, läänimeeste (mõisnike), vaimulike ja linnade esindajad; maapäevast sai Vana-Liivimaa elu juhtiv organ.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1433",
          subDate: "",
          cover: "Suur tulekahju Tallinnas.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Suur tulekahju Tallinnas.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1464",
          subDate: "",
          cover: "Katk Tallinnas, ellu jäi kolmandik linnaelanikke.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Katk Tallinnas, ellu jäi kolmandik linnaelanikke.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1474",
          subDate: "",
          cover: "Valmis Tartu toomkirik.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Valmis Tartu toomkirik.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1480–81",
          subDate: "",
          cover: "Liivimaa esimene sõda Vene (Moskva) riigiga.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Liivimaa esimene sõda Vene (Moskva) riigiga.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1492",
          subDate: "",
          cover:
              "Venelased ehitasid Narva jõe paremale kaldale Ivangorodi (Jaanilinna) linnuse.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Venelased ehitasid Narva jõe paremale kaldale Ivangorodi (Jaanilinna) linnuse.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1500",
          subDate: "",
          cover: "Eesti rahvaarv suurenes veerand miljonini.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Eesti rahvaarv suurenes veerand miljonini.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1501–02",
          subDate: "",
          cover: "Liivimaa teine sõda Vene (Moskva) riigiga.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Liivimaa teine sõda Vene (Moskva) riigiga.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1504–05",
          subDate: "",
          cover: "Katk Eestis.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
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
          date: "1507",
          subDate: "",
          cover: "Liivimaa talupoegadel keelati relvakandmine.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Liivimaa talupoegadel keelati relvakandmine.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1515–20",
          subDate: "",
          cover: "Mitu katkulainet Eestis.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Mitu katkulainet Eestis.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1523",
          subDate: "",
          cover: "Reformatsiooni algus Eestis.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Reformatsiooni algus Eestis.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1524",
          subDate: "14. september",
          cover: "Tallinna kirikute rüüstamine.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Tallinna kirikute rüüstamine.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1525",
          subDate: "jaanuar",
          cover:
              "Tartu kirikute rüüstamine; jaanuaris dominiiklaste väljaajamine Tallinnast.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Tartu kirikute rüüstamine; jaanuaris dominiiklaste väljaajamine Tallinnast.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1525",
          subDate: "1. november",
          cover:
              "Viljandi kirikute rüüstamine; samal aastal hävitati Lübeckis kohtu otsusel arvatavasti esimene eesti keelt sisaldav trükis.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Viljandi kirikute rüüstamine; samal aastal hävitati Lübeckis kohtu otsusel arvatavasti esimene eesti keelt sisaldav trükis.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1526",
          subDate: "15. märts",
          cover: "Uus-Pärnu kirikute rüüstamine",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Uus-Pärnu kirikute rüüstamine',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1535",
          subDate: "",
          cover:
              "Tallinna rae otsusel hukati Riisipere mõisnik Johann von Uexküll.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Tallinna rae otsusel hukati Riisipere mõisnik Johann von Uexküll.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1552",
          subDate: "",
          cover:
              "Eesti esimese linnaraamatukogu (Tallinna Oleviste kiriku raamatukogu) asutamine.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Eesti esimese linnaraamatukogu (Tallinna Oleviste kiriku raamatukogu) asutamine.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1554",
          subDate: "",
          cover:
              "Vana-Liivimaa esindajad püüdsid pikendada rahulepingut Vene tsaari Ivan IV-ga ning lubasid talle rahu säilitamiseks maksu.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Vana-Liivimaa esindajad püüdsid pikendada rahulepingut Vene tsaari Ivan IV-ga ning lubasid talle rahu säilitamiseks maksu.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1555–56",
          subDate: "",
          cover:
              "Nn koadjuutorivaenus – Liivimaa kodusõda Riia peapiiskopi ja ordu vahel.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Nn koadjuutorivaenus – Liivimaa kodusõda Riia peapiiskopi ja ordu vahel.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1556",
          subDate: "",
          cover:
              "Tsaar saatis saadiku Tartusse võlguolevat maksu nõudma, piiskop andis petlikke lubadusi.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Tsaar saatis saadiku Tartusse võlguolevat maksu nõudma, piiskop andis petlikke lubadusi.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1557",
          subDate: "",
          cover:
              "Liivimaa saatkond Moskvas uute lubadustega võlg peatselt ära maksta.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Liivimaa saatkond Moskvas uute lubadustega võlg peatselt ära maksta.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
    ]
  };
}
