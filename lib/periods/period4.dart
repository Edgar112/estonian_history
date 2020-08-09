import 'package:estonian_history/constants.dart';
import 'package:estonian_history/global.dart';
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

Map<List<Event>, List<Event>> getPeriod4() {
  return {
    [
      Event(
          name: "",
          date: "Võõrvõimu algussajand (1227–1343)",
          subDate: "",
          cover: "",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(text: "\n\n"),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture('Euroopa poliitiline kaart 1328. aastal',
                        'assets/illustrations/1024px-Europe_in_1328.png')
                  ])),
                  TextSpan(text: "\n\n"),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture(
                        'Saksa ordu valdused Preisimaal ja pärast Liivi ordu liitumist 1237. aastal ordu valdused Kuramaal ja Vana-Liivimaal. Joonisel on märgitud viirutatult 1260. aastal vastupanupiirkonnad Preisimaal ja Žemaitijas',
                        'assets/illustrations/1024px-Deutscher_Orden_1260.png')
                  ])),
                  TextSpan(text: "\n\n"),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture(
                        'Läänemere-äärsete paganate maade jaotus ristisõdijate riikide vahel, 1225–1250. Taani kuninga maad on märgitud kaardi ülaosas',
                        'assets/illustrations/Teutonic_state_1250.png')
                  ])),
                  TextSpan(text: "\n\n"),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture('Garlieb Merkeli kaart 13. sajandi Vana-Liivimaast',
                        'assets/illustrations/Merkel,_Liefland_im_Anfange_des_13ten_Jahrhunderts.jpg'),
                    Picture(
                        'Riia peapiiskopkonna ja Liivi ordu valdused Liivimaal 1260. aastal',
                        'assets/illustrations/800px-Medieval_Livonia_1260.png'),
                    Picture(
                        'Tallinna piiskopkonna diötsees (heleroheline). Sinakasrohelisega on tähistatud alati ordule kuulunud Järvamaa. Piiskopkonda mitte kuulunud ordualad on tähistatud valgega',
                        'assets/illustrations/Tallinna_pk_Liivis.png')
                  ])),
                ]),
          ),
          iconBackground: Colors.transparent),
    ]: [
      Event(
          name: "",
          date: "1227",
          subDate: "",
          cover:
              "Mõõgavendade Ordu allutas Tallinna ja kogu Põhja-Eesti; Tallinn sai Riia linnaõiguse.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Mõõgavendade Ordu allutas Tallinna ja kogu Põhja-Eesti; Tallinn sai Riia linnaõiguse.\n\n',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                  TextSpan(
                    text: 'Linnaõigus\n\n',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                      text:
                          'Linnaõigus on keskajast pärinev õigusnormide kogum linnakogukonna jaoks. Lääne-Euroopas tekkisid linnaõigused alates 11. sajandist, kui linnad vabanesid feodaalide võimu alt. Linnaõiguste väljatöötamisel tugineti nt kohalikul tavaõigusel, privileegidel (nt turuõigus) ja raemäärustel.',
                      style: TextStyle(fontSize: 25)),
                ]),
          ),
          more: true,
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1237",
          subDate: "",
          cover: "Mõõgavendade Ordu ühines Saksa Orduga Liivimaa Orduks.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Mõõgavendade Ordu ühines Saksa Orduga Liivimaa Orduks.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1237–41",
          subDate: "",
          cover: "Saarlaste ülestõus.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Saarlaste ülestõus.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1238",
          subDate: "7. juuni",
          cover:
              "Taani ja ordu sõlmisid Stensby lepingu, millega taanlased said tagasi Tallinna ja kogu Põhja-Eesti.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Taani ja ordu sõlmisid Stensby lepingu, millega taanlased said tagasi Tallinna ja kogu Põhja-Eesti.\n\n',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                  TextSpan(
                    text: 'Stensby leping\n\n',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                      text: 'Stensby leping on 7. juunil 1238 Taanis ',
                      style: TextStyle(fontSize: 25)),
                  TextSpan(
                      text: 'Sjællandi',
                      style: TextStyle(
                          fontSize: 25,
                          color: kText2Color.withOpacity(0.6),
                          decoration: TextDecoration.underline),
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          Navigator.push(
                              contextHistoryInfo,
                              FadeRoute(
                                  page: MyMap(
                                coordinates: LatLng(55.466732, 11.721919),
                                radius: 50000,
                                zoom: 7,
                                drawCircles: true,
                              )));
                        }),
                  TextSpan(
                      text:
                          ' saarel Taani kuninga Valdemar II ja Liivimaa ordumeistri Hermann Balke vahel sõlmitud kokkulepe eesmärgiga lõpetada 1220. aastal Põhja- ja Kesk-Eesti kuuluvuse pärast puhkenud konflikt Taani ning Liivi ordu eelkäija Mõõgavendade ordu ja Riia piiskopi vahel.',
                      style: TextStyle(fontSize: 25)),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture('Taani valdused Valdemar II valitsemisajal',
                        'assets/illustrations/Danska_valdused_under_valdemar.jpg')
                  ]))
                ]),
          ),
          more: true,
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1240",
          subDate: "",
          cover:
              "Koostati „Liber Census Daniae” („Taani hindamisraamat”), milles on andmeid Põhja-Eesti kohta (peamisi Eesti vanema ajaloo allikaid).",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Koostati „Liber Census Daniae” („Taani hindamisraamat”), milles on andmeid Põhja-Eesti kohta (peamisi Eesti vanema ajaloo allikaid).',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1248",
          subDate: "",
          cover: "Tallinn sai Lübecki linnaõiguse.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Tallinn sai Lübecki linnaõiguse.\n\n',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                  TextSpan(
                    text: 'Lübecki õigus\n\n',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                      text:
                          'Lübecki õigus (ius lubicense) oli keskaegne Mandri-Euroopa õigusnormide kogumik (linnaõigus), mis oli kehtiv ühtekokku ligi sajas linnas, teiste hulgas Lübeckis, Kielis, Rostockis, Wismaris, Stralsundis, Greifswaldis, Tallinnas, Rakveres ja Narvas. 15. sajandi alguses elas "Lübecki õiguse linnades" kokku umbes 300 000 inimest.',
                      style: TextStyle(fontSize: 25)),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture('Lübeck 14. sajandil',
                        'assets/illustrations/lubek_14saj.jpg')
                  ]))
                ]),
          ),
          more: true,
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1249",
          subDate: "",
          cover: "Tallinnas rajati naistsistertslaste Püha Mikaeli klooster.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Tallinnas rajati naistsistertslaste Püha Mikaeli klooster.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1251",
          subDate: "",
          cover: "Esimene teade Eesti kooli kohta (Pärnu toomkool).",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Esimene teade Eesti kooli kohta (Pärnu toomkool).',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1260–61",
          subDate: "",
          cover: "Saarlaste teine ülestõus.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Saarlaste teine ülestõus.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1263",
          subDate: "",
          cover:
              "Leedulased põletasid maha Vana-Pärnu, Saare-Lääne piiskop viis oma residentsi Pärnust Haapsallu.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Leedulased põletasid maha Vana-Pärnu, Saare-Lääne piiskop viis oma residentsi Pärnust Haapsallu.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1279",
          subDate: "",
          cover: "Haapsalu sai linna õigused.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Haapsalu sai linna õigused.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1283",
          subDate: "",
          cover:
              "Viljandi esmamaining linnana; järgmistel aastatel said Tallinn, Tartu, Pärnu ja Viljandi Hansa liikmeks.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Viljandi esmamaining linnana; järgmistel aastatel said Tallinn, Tartu, Pärnu ja Viljandi Hansa liikmeks.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1291",
          subDate: "",
          cover: "Paide sai linna õigused.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Paide sai linna õigused.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1297–98",
          subDate: "",
          cover:
              "Liivimaa kodusõda (ühel pool ordu ja Riia linn, teisel pool piiskopid).",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Liivimaa kodusõda (ühel pool ordu ja Riia linn, teisel pool piiskopid).',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "u 1300",
          subDate: "",
          cover: "Põllumajanduses võeti kasutusele kolmeväljasüsteem.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Põllumajanduses võeti kasutusele kolmeväljasüsteem.\n\n',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                  TextSpan(
                    text: 'Kolmeväljasüsteem\n\n',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                      text:
                          'Ehk kesasüsteem on selline maaviljelussüsteem, kus põld on jagatud kolmeks enam-vähem samasuuruseks tükiks, ja kus eri aegadel viljeletakse suvivilja, talivilja ja üks osa on jäetud kesaks.',
                      style: TextStyle(fontSize: 25)),
                ]),
          ),
          more: true,
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1302",
          subDate: "",
          cover: "Rakvere sai linna õigused.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Rakvere sai linna õigused.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1305",
          subDate: "",
          cover: "Tsistertslased asutasid Padise kloostri.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Tsistertslased asutasid Padise kloostri.\n\n',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                  TextSpan(
                    text: 'Tsistertslaste ordu\n\n',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                      text:
                          'On benediktlastest alguse saanud katoliku ordu. Ordul on valge rüü, mille peal kantakse musta ülavööd või põlle. Tsistertslaste ordu vendi on nimetatud "valgeteks vendadeks", erinevalt dominiiklaste ordu "mustadest vendadest".\n\n',
                      style: TextStyle(fontSize: 25)),
                  TextSpan(
                    text: 'Padise klooster\n\n',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                      text:
                          'Klooster on esimene Harjumaa arhitektuurimälestis, mis taasiseseisvunud Eestis vastava tähise sai. Padise klooster on suure tähtsusega arhitektuuri- ja ajalooline objekt nii Eestis kui kogu Põhja-Euroopas.\n\n',
                      style: TextStyle(fontSize: 25)),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture('Tsistertslaste vapp',
                        'assets/illustrations/Cistercian_Order.png'),
                    Picture('Tsistertslaste rõivastuses mungad',
                        'assets/illustrations/Cistersian_priests.JPG'),
                    Picture('Padise klooster',
                        'assets/illustrations/Padise_kloostri_varemed.jpg'),
                    Picture('Padise kloostri varemed',
                        'assets/illustrations/Padise_kloostri_varemed2.jpg'),
                    Picture('Kloostri õu',
                        'assets/illustrations/Padise_Klooster.jpg')
                  ], SwiperLayout.DEFAULT))
                ]),
          ),
          more: true,
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1315",
          subDate: "",
          cover: "Liivimaad tabas mitmeaastase ikalduse tõttu nälg.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Liivimaad tabas mitmeaastase ikalduse tõttu nälg.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1328-30",
          subDate: "",
          cover: "Teine Liivimaa kodusõda.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Teine Liivimaa kodusõda.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1329",
          subDate: "",
          cover:
              "Esimene teade Eesti kirikute (Helme ja Paistu) orelite kohta.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Esimene teade Eesti kirikute (Helme ja Paistu) orelite kohta.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6)))
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1340",
          subDate: "",
          cover: "Tallinna raekoja esmamaining ürikuis.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Tallinna raekoja esmamaining ürikuis.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1342",
          subDate: "",
          cover: "Vastseliina linnuse ehitamine.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Vastseliina linnuse ehitamine.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
    ]
  };
}
