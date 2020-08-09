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

Map<List<Event>, List<Event>> getPeriod7() {
  return {
    [
      Event(
          name: "",
          date: "Vene-Liivimaa sõda (1558–83)",
          subDate: "",
          cover: "",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Vene-Liivimaa sõja tulemused\n\n',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
                  TextSpan(
                      text:
                          'Aastatel 1558–1561 toimunud sõja tulemusel vallutas Moskva tsaaririik: Narva, Tartu ja Alutaguse, mõningad Järvamaa ja Virumaa maakonnad ning Venemaaga piirnevad alad. Narva oli aastatel 1558–1581 Vene tsaaririigi võimu all ning järgmisel aastakümnel kujunes Narva Vene riigi ainukeseks väliskaubandussadamaks.\n\n',
                      style: TextStyle(fontSize: 25)),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture(
                        'Narva piiramine 1558. aastal Boriss Tšorikovi teos',
                        'assets/illustrations/Siege_of_Narva_1558.jpg')
                  ])),
                  TextSpan(text: '\n\n', style: TextStyle(fontSize: 25)),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture('Euroopa poliitiline kaart, ca 1560. aastal',
                        'assets/illustrations/Europe_about_1560.jpg')
                  ])),
                ]),
          ),
          iconBackground: Colors.transparent),
    ]: [
      Event(
          name: "",
          date: "1558",
          subDate: "22. jaanuar",
          cover:
              "Vene vägi tungis põhjas Alutagusesse ja lõunas Vastseliina kaudu Tartu piiskopkonda, rüüsteretk kestis 3 nädalat.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Vene vägi tungis põhjas Alutagusesse ja lõunas Vastseliina kaudu Tartu piiskopkonda, rüüsteretk kestis 3 nädalat.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1558",
          subDate: "11. mai",
          cover: "Venelased vallutasid Narva.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
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
          date: "1558",
          subDate: "6. juuni",
          cover: "Venelased vallutasid Vasknarva.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Venelased vallutasid Vasknarva.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1558",
          subDate: "18. juuli",
          cover: "Venelased vallutasid Tartu.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
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
          date: "1559",
          subDate: "",
          cover:
              "Sügisel ostis Taani kuningas Frederik II Saare-Lääne piiskopi valdused oma vennale hertsog Magnusele.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Sügisel ostis Taani kuningas Frederik II Saare-Lääne piiskopi valdused oma vennale hertsog Magnusele.\n\n',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture('Liivimaa kuningas Magnus 1563. aastal',
                        'assets/illustrations/Magnus_1563_VS.jpg')
                  ])),
                ]),
          ),
          more: true,
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1560",
          subDate: "2. august",
          cover:
              "Härgmäe lahing, Liivimaa Ordu viimane välilahing, kaotati venelastele.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Härgmäe lahing, Liivimaa Ordu viimane välilahing, kaotati venelastele.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1560",
          subDate: "21. august",
          cover:
              "Venelased vallutasid Viljandi; sügisel algas Harjus talupoegade mäss, see levis Viru- ja Läänemaale; aasta lõpus paigutati ordu kutsel mitmesse Eesti linnusesse Poola väeosad.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Venelased vallutasid Viljandi; sügisel algas Harjus talupoegade mäss, see levis Viru- ja Läänemaale; aasta lõpus paigutati ordu kutsel mitmesse Eesti linnusesse Poola väeosad.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1561,",
          subDate: "4.–6. juuni",
          cover:
              "Harju-, Viru- ja Järvamaa rüütelkond koos Tallinna linnaga andsid ustavusvande Rootsi kuningale Erik XIV-le.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Harju-, Viru- ja Järvamaa rüütelkond koos Tallinna linnaga andsid ustavusvande Rootsi kuningale Erik XIV-le.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1561",
          subDate: "28. november",
          cover:
              "Viimased Vana-Liivimaa alad, sh Lõuna- ja Kesk-Eesti, alistusid Poola kuningale Zygmunt II Augustile.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Viimased Vana-Liivimaa alad, sh Lõuna- ja Kesk-Eesti, alistusid Poola kuningale Zygmunt II Augustile.\n\n',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture('Zygmunt II August',
                        'assets/illustrations/150px-Sigismund_II_Augustus.png')
                  ]))
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1563",
          subDate: "",
          cover: "Kuressaare sai linna õigused.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Kuressaare sai linna õigused.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1570–78",
          subDate: "",
          cover: "Venemaast sõltuv Magnuse vasallkuningriik Eesti alal.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Venemaast sõltuv Magnuse vasallkuningriik Eesti alal.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1570–71",
          subDate: "",
          cover: "Venelased piirasid Magnuse juhatusel Tallinna.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Venelased piirasid Magnuse juhatusel Tallinna.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1573",
          subDate: "jaanuar–märts",
          cover:
              "Koluvere lahing; Rootsi väepealik Clas Tott võitis venelasi ja sundis nad Läänemaalt lahkuma.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Koluvere lahing; Rootsi väepealik Clas Tott võitis venelasi ja sundis nad Läänemaalt lahkuma.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1576–79",
          subDate: "juuli",
          cover:
              "Venelaste vastu tegutses Ivo Schenkenbergi juhitud talumeeste lipkond - „Hannibali rahvas”.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Venelaste vastu tegutses Ivo Schenkenbergi juhitud talumeeste lipkond - „Hannibali rahvas”.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1577",
          subDate: "jaanuar",
          cover: "Venelased piirasid teist korda Tallinna.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Venelased piirasid teist korda Tallinna.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1578",
          subDate: "",
          cover: "Nälg Eestis.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Nälg Eestis.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1580",
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
          date: "1581",
          subDate: "6. november",
          cover: "Rootslased vallutasid venelastelt Narva.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Rootslased vallutasid venelastelt Narva.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1583",
          subDate: "10. august",
          cover: "Rootsi ja Venemaa sõlmisid 3 aastaks Pljussa vaherahu.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Rootsi ja Venemaa sõlmisid 3 aastaks Pljussa vaherahu.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
    ]
  };
}
