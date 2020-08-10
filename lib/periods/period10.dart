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

Map<List<Event>, List<Event>> getPeriod10() {
  return {
    [null]: [
      Event(
          name: "",
          date: "1700",
          subDate: "12. veebruar",
          cover:
              "August II (Saksi) vägi tungis Liivimaale ja piiras maikuuni Riiat.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'August II (Saksi) vägi tungis Liivimaale ja piiras maikuuni Riiat.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1700",
          subDate: "19. august",
          cover: "Venemaa kuulutas Rootsile sõja.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Venemaa kuulutas Rootsile sõja.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1700",
          subDate: "22. september",
          cover: "Vene sõjavägi jõudis Narva alla.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Vene sõjavägi jõudis Narva alla.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1700",
          subDate: "4. november",
          cover: "Tallinnas maabus Karl XII koos oma väega.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Tallinnas maabus Karl XII koos oma väega.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1700",
          subDate: "19. november",
          cover: "Karl XII lõi venelasi Narva lahingus.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Karl XII lõi venelasi Narva lahingus.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1701",
          subDate: "29. detsember",
          cover: "Venelased võitsid rootslasi Erastvere lahingus.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Venelased võitsid rootslasi Erastvere lahingus.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1701",
          subDate: "18. juuli",
          cover: "Venelased võitsid rootslasi Hummuli lahingus.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Venelased võitsid rootslasi Hummuli lahingus.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1703",
          subDate: "",
          cover:
              "Venelaste rüüsteretk läbi Viru-, Järva-, Viljandi-, Tartu- ja Võrumaa.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Venelaste rüüsteretk läbi Viru-, Järva-, Viljandi-, Tartu- ja Võrumaa.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1704",
          subDate: "3. mai",
          cover: "Venelased võitsid rootslasi Kastre lahingus Emajõel.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Venelased võitsid rootslasi Kastre lahingus Emajõel.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1704",
          subDate: "13. juuli",
          cover: "Venelased vallutasid Tartu.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Venelased vallutasid Tartu.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1704",
          subDate: "9. august",
          cover: "Venelased vallutasid Narva.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Venelased vallutasid Narva.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1709",
          subDate: "27. juuni",
          cover: "Rootslased said venelastelt Poltaava lahingus lüüa.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Rootslased said venelastelt Poltaava lahingus lüüa.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1710–13",
          subDate: "",
          cover:
              "Viimane ning suurim katk Eestis; suri u 200 000 inimest – pool rahvastikust.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Viimane ning suurim katk Eestis; suri u 200 000 inimest – pool rahvastikust.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1710",
          subDate: "12. august",
          cover: "Venelased vallutasid Pärnu.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Venelased vallutasid Pärnu.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1710",
          subDate: "15. september",
          cover: "Venelased vallutasid Kuressaare.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Venelased vallutasid Kuressaare.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1710",
          subDate: "29. september",
          cover:
              "Tallinna linna ja Eestimaa rüütelkonna kapitulatsioon Venemaa ees.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Tallinna linna ja Eestimaa rüütelkonna kapitulatsioon Venemaa ees.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
    ]
  };
}
