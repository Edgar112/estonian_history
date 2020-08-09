import 'package:estonian_history/constants.dart';
import 'package:estonian_history/models/event.dart';
import 'package:estonian_history/models/picture.dart';
import 'package:estonian_history/widgets/imageSwiper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';

Map<List<Event>, List<Event>> getPeriod3() {
  return {
    [
      Event(
          name: "",
          date: "Muistne vabadusvõitlus (1208–27)",
          subDate: "",
          cover: "",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                    text: 'Muistne vabadusvõitlus\n\n',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text:
                        'oli sõjategevus eestlaste ja neid allutada püüdnud Riia piiskopi, Mõõgavendade ordu, Taani ja Rootsi vahel alates 1206. või 1208. kuni 1227. aastani, mil kõik eestlased olid alistatud. Peamine ajalooallikas selle kohta on Henriku Liivimaa kroonika.\n\n',
                    style: TextStyle(fontSize: 25),
                  ),
                  TextSpan(
                    text: 'Toimumiskoht\n',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: 'Praegune Eesti ja Läti ala.\n\n',
                    style: TextStyle(fontSize: 25),
                  ),
                  TextSpan(
                    text: 'Tulemus\n',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: 'Eestlaste alistamine ja ristiusustamine.\n\n',
                    style: TextStyle(fontSize: 25),
                  ),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture(
                        'Muinas-Eesti maakonnad.\nTähtsamad linnused on tähistatud punasega',
                        'assets/illustrations/Ancient_Estonian_counties.png'),
                    Picture('Henriku Liivimaa kroonika koopia lehekülg',
                        'assets/illustrations/Henriku_kroonika.jpg'),
                  ], SwiperLayout.DEFAULT))
                ]),
          ),
          more: true,
          iconBackground: Colors.transparent)
    ]: [
      Event(
          name: "",
          date: "1208",
          subDate: "",
          cover:
              "Mõõgavendade Ordu sõjaretk Ugandisse koos ristitud lätlaste ja liivlastega, Otepää mahapõletamine; ugalaste ja sakalaste vasturetk lätlaste aladele; lätlaste rüüsteretk Sakalasse; aasta lõpus sõlmiti üheks aastaks rahu.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Mõõgavendade Ordu sõjaretk Ugandisse koos ristitud lätlaste ja liivlastega, Otepää mahapõletamine; ugalaste ja sakalaste vasturetk lätlaste aladele; lätlaste rüüsteretk Sakalasse; aasta lõpus sõlmiti üheks aastaks rahu.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture('Otepää linnamägi',
                        'assets/illustrations/Opetää_hill.jpg'),
                  ]))
                ]),
          ),
          more: true,
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1210",
          subDate: "",
          cover:
              "Venelaste retk Ugandisse; ordu, piiskopi, lätlaste ja liivlaste retk Ugandisse ja Otepää teine põletamine; eestlaste retk Võnnu alla, võit Ümera lahingus sakslaste, lätlaste ja liivlaste väe üle; aasta lõpus sakslaste, lätlaste, liivlaste ja venelaste retk Soontaganasse.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Venelaste retk Ugandisse; ordu, piiskopi, lätlaste ja liivlaste retk Ugandisse ja Otepää teine põletamine; eestlaste retk Võnnu alla, võit Ümera lahingus sakslaste, lätlaste ja liivlaste väe üle; aasta lõpus sakslaste, lätlaste, liivlaste ja venelaste retk Soontaganasse.\n\n',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture('Võnnu piiramine ja Ümera lahing',
                        'assets/illustrations/Ümera_lahing_(1210).gif'),
                    Picture('Soontagana maalinn',
                        'assets/illustrations/Soontagana_maalinn.jpg'),
                  ], SwiperLayout.DEFAULT))
                ]),
          ),
          more: true,
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1210–11",
          subDate: "",
          cover: "Esimene teadaolev katk Eestis.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Esimene teadaolev katk Eestis.\n\n',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                  TextSpan(
                      text: 'Katk\n\n',
                      style: TextStyle(
                          fontSize: 25,
                          color: kText2Color,
                          fontWeight: FontWeight.w600)),
                  TextSpan(
                      text:
                          'Katkuks (ladina keeles pestis) nimetatakse kergesti levivat nakkushaigust, mille tekitajaks on katkubakter (Yersinia pestis).\n\n',
                      style: TextStyle(fontSize: 25, color: kText2Color)),
                  TextSpan(
                      text: 'Levik\n\n',
                      style: TextStyle(
                        fontSize: 25,
                        color: kText2Color,
                      )),
                  TextSpan(
                      text:
                          'Katku levitavad närilised, eriti rotid ja ümisejad. Neil parasiitidena elavad kirbud nakatavad inimesi. Katku võivad nakatuda ka jänesed, oravad, kassid ja koerad',
                      style: TextStyle(fontSize: 25, color: kText2Color)),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture('Yersinia pestis nähtuna 200× suurendusega.',
                        'assets/illustrations/katk.jpeg')
                  ]))
                ]),
          ),
          more: true,
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1211",
          subDate: "",
          cover:
              "Eestlaste retked Lätisse; sakslaste, lätlaste ja liivlaste retked Eestisse, Viljandi linnuse piiramine ja alistamine, eestlaste ristimine Sakalas; eestlased piirasid Turaida linnust ja said Koiva lahingus lüüa; venelaste retk Varbola alla; Lembitu retk Pihkvasse.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Eestlaste retked Lätisse; sakslaste, lätlaste ja liivlaste retked Eestisse, Viljandi linnuse piiramine ja alistamine, eestlaste ristimine Sakalas; eestlased piirasid Turaida linnust ja said Koiva lahingus lüüa; venelaste retk Varbola alla; Lembitu retk Pihkvasse.\n\n',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture(
                        'Viljandi piiramisel kasutati Eestimaal arvatavasti esmakordselt heitemasinat',
                        'assets/illustrations/heitemasin.jpg'),
                    Picture('Turaida lahing',
                        'assets/illustrations/Turaida_lahing.jpg'),
                    Picture('Varbola linnuse rekonstrueeritud läänevärav',
                        'assets/illustrations/Varbola_värav_2008.jpg')
                  ], SwiperLayout.DEFAULT))
                ]),
          ),
          more: true,
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1212",
          subDate: "",
          cover:
              "Turaidas sõlmisid eestlased ja sakslased kolmeks aastaks vaherahu.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Turaidas sõlmisid eestlased ja sakslased kolmeks aastaks vaherahu.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1213",
          subDate: "",
          cover: "Leedulaste rüüsteretk Sakalasse.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Leedulaste rüüsteretk Sakalasse.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1215",
          subDate: "",
          cover:
              "Talvel sakslaste, lätlaste ja liivlaste rüüsteretked Ridalasse ja Sakalasse (Leole linnuse vallutamine); kevadel eestlaste kolme maleva sõjakäik; suvel lätlaste 9 rüüsteretke Ugandisse ja Vaigasse; Uue sadama lahing Saaremaa rannikul; Ugandi ja Sakala maakonna ristimine.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Talvel sakslaste, lätlaste ja liivlaste rüüsteretked Ridalasse ja Sakalasse (Leole linnuse vallutamine); kevadel eestlaste kolme maleva sõjakäik; suvel lätlaste 9 rüüsteretke Ugandisse ja Vaigasse; Uue sadama lahing Saaremaa rannikul; Ugandi ja Sakala maakonna ristimine.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1216",
          subDate: "",
          cover:
              "Talvel sakslaste, lätlaste ja liivlaste retked Soontaganasse ja Saaremaale; kevadel saarlaste retk Põhja-Lätisse; suvel sakslaste, lätlaste ja liivlaste retk Harjusse ja Revalasse; sügisel venelaste retk Ugandisse.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Talvel sakslaste, lätlaste ja liivlaste retked Soontaganasse ja Saaremaale; kevadel saarlaste retk Põhja-Lätisse; suvel sakslaste, lätlaste ja liivlaste retk Harjusse ja Revalasse; sügisel venelaste retk Ugandisse.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1217",
          subDate: "",
          cover:
              "Jaanuaris sakslaste ja ugalaste retk Pihkvamaale; kevadtalvel sakslaste, lätlaste, liivlaste ja ugalaste retk Järva- ja Virumaale ning Järvamaa alistumine; lääne-eestlased ja venelased piirasid Otepääl olevaid sakslasi ja sundisid need lahkuma; sakslaste, lätlaste ja liivlaste retk Sakalasse, vabade Eesti maakondade ühinemine Lembitu juhtimisel malevaks ning Madisepäeva lahing (21. sept), kus eestlased said lüüa ja Lembitu langes; Lõuna- ja Kesk-Eesti maakonnad sõlmisid sakslastega rahu ja lasksid end ristida.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Jaanuaris sakslaste ja ugalaste retk Pihkvamaale; kevadtalvel sakslaste, lätlaste, liivlaste ja ugalaste retk Järva- ja Virumaale ning Järvamaa alistumine; lääne-eestlased ja venelased piirasid Otepääl olevaid sakslasi ja sundisid need lahkuma; sakslaste, lätlaste ja liivlaste retk Sakalasse, vabade Eesti maakondade ühinemine Lembitu juhtimisel malevaks ning Madisepäeva lahing (21. sept), kus eestlased said lüüa ja Lembitu langes; Lõuna- ja Kesk-Eesti maakonnad sõlmisid sakslastega rahu ja lasksid end ristida.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1218",
          subDate: "",
          cover:
              "Talvel sakslaste, lätlaste ja liivlaste retk Läänemaale, läänlaste ristimine ja maksustamine; kevadel saarlaste retk Põhja-Lätisse; jaanipäeval piiskop Alberti abipalve Taani kuningale Valdemar II-le eestlaste ühiseks alistamiseks; sügisel sakslaste 2 lahingut venelastega Väikese Emajõe juures; harjulased piirasid koos venelastega Võnnut (Cēsist).",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Talvel sakslaste, lätlaste ja liivlaste retk Läänemaale, läänlaste ristimine ja maksustamine; kevadel saarlaste retk Põhja-Lätisse; jaanipäeval piiskop Alberti abipalve Taani kuningale Valdemar II-le eestlaste ühiseks alistamiseks; sügisel sakslaste 2 lahingut venelastega Väikese Emajõe juures; harjulased piirasid koos venelastega Võnnut (Cēsist).\n\n',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture('Piiskop Alberti kujutis Riia 800. juubeli mündil',
                        'assets/illustrations/albertJuubel.gif'),
                    Picture('Taani kuningas Valdemar II',
                        'assets/illustrations/Valdemar2_king.jpg')
                  ], SwiperLayout.DEFAULT))
                ]),
          ),
          more: true,
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1219",
          subDate: "",
          cover:
              "Talvel sakslaste, lätlaste ja liivlaste retk Harjusse ja Revalasse; suvel taanlaste laevastiku maabumine Lindanise linnuse all, Lindanise lahing, Revala alistamine ja ristimine; sügisel sakslaste, lätlaste ja sakalaste retk Järvamaale.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Talvel sakslaste, lätlaste ja liivlaste retk Harjusse ja Revalasse; suvel taanlaste laevastiku maabumine Lindanise linnuse all, Lindanise lahing, Revala alistamine ja ristimine; sügisel sakslaste, lätlaste ja sakalaste retk Järvamaale.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture(
                        'Lindanise lahing (1219) Taani kunstniku Christian August Lorentzeni maalil aastast 1809',
                        'assets/illustrations/lindaniseFight.jpg')
                  ]))
                ]),
          ),
          more: true,
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1220",
          subDate: "",
          cover:
              "Talvel sakslaste, lätlaste, liivlaste, järvalaste, ugalaste ja sakalaste retk Virumaale; seejärel saarlaste rüüsteretk Järvamaale ristitud eestlaste vastu; sakslaste, lätlaste, liivlaste ja ristitud eestlaste retk Harjusse ja Revalasse; Virumaa ristimine; suvel tungisid rootslased Läänemaale, vallutasid Lihula linnuse ja ristisid ümbruskonna rahvast, augustis vallutasid linnuse saarlased.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Talvel sakslaste, lätlaste, liivlaste, järvalaste, ugalaste ja sakalaste retk Virumaale; seejärel saarlaste rüüsteretk Järvamaale ristitud eestlaste vastu; sakslaste, lätlaste, liivlaste ja ristitud eestlaste retk Harjusse ja Revalasse; Virumaa ristimine; suvel tungisid rootslased Läänemaale, vallutasid Lihula linnuse ja ristisid ümbruskonna rahvast, augustis vallutasid linnuse saarlased.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture('Lihula lahingu mälestusmärk',
                        'assets/illustrations/Lihula_1220_mälestuskivi.jpg')
                  ]))
                ]),
          ),
          more: true,
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1221",
          subDate: "",
          cover:
              "Aprillis saarlaste ja põhjaeestlaste ebaõnnestunud katse Tallinna taanlastelt tagasi vallutada, taanlaste ja sakslaste leping mõjupiiride kohta; hakati täitma ristiusu väliseid kombeid.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Aprillis saarlaste ja põhjaeestlaste ebaõnnestunud katse Tallinna taanlastelt tagasi vallutada, taanlaste ja sakslaste leping mõjupiiride kohta; hakati täitma ristiusu väliseid kombeid.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1222",
          subDate: "",
          cover:
              "Suvel maabusid taanlased Saaremaal ja ehitasid sinna kivilinnuse; pärast kuningas Valdemar II lahkumist vallutasid linnuse saarlased, seejärel kihutasid nad vastuhakule ka harjulasi, läänlasi, virulasi ja järvalasi.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Suvel maabusid taanlased Saaremaal ja ehitasid sinna kivilinnuse; pärast kuningas Valdemar II lahkumist vallutasid linnuse saarlased, seejärel kihutasid nad vastuhakule ka harjulasi, läänlasi, virulasi ja järvalasi.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1223",
          subDate: "",
          cover:
              "Jaanuari lõpus sakalaste vastuhakk Viljandis; veebruaris vastuhakk Ugandis, Tallinna linna piiramine, sakslaste linnuste vallutamine; Tallinn jäi taanlaste valdusse; vastastikused sõjakäigud maa lõunapiiril, eestlaste kaotus teises Ümera lahingus; augustis vallutasid sakslased Viljandi; venelaste retk läbi Eesti eestlaste liitlastena.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Jaanuari lõpus sakalaste vastuhakk Viljandis; veebruaris vastuhakk Ugandis, Tallinna linna piiramine, sakslaste linnuste vallutamine; Tallinn jäi taanlaste valdusse; vastastikused sõjakäigud maa lõunapiiril, eestlaste kaotus teises Ümera lahingus; augustis vallutasid sakslased Viljandi; venelaste retk läbi Eesti eestlaste liitlastena.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1224",
          subDate: "",
          cover:
              "Jaanuaris sakslaste retk Harjumaale; augustis piirasid sakslased Tarbatu linnust, kogu Mandri-Eesti alistus ja võttis uuesti vastu ristiusu.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Jaanuaris sakslaste retk Harjumaale; augustis piirasid sakslased Tarbatu linnust, kogu Mandri-Eesti alistus ja võttis uuesti vastu ristiusu.\n\n',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture('Mälestusmärk Tartu kaitsjatele',
                        'assets/illustrations/tartuKaitsijatele.jpg')
                  ]))
                ]),
          ),
          more: true,
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1227",
          subDate: "",
          cover:
              "Veebruaris vallutas sakslaste, lätlaste, liivlaste ja mandrieestlaste vägi Muhu linnuse; hävitati Valjala linnus; kogu Saaremaa allutati, rahvas ristiti.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Veebruaris vallutas sakslaste, lätlaste, liivlaste ja mandrieestlaste vägi Muhu linnuse; hävitati Valjala linnus; kogu Saaremaa allutati, rahvas ristiti.\n\n',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture(
                        'Muhu maalinn', 'assets/illustrations/Muhu_maalinn.jpg')
                  ]))
                ]),
          ),
          more: true,
          iconBackground: Colors.transparent),
      // Event(
      //     name: "",
      //     date: "",
      //     subDate: "",
      //     cover: "",
      //     text: RichText(
      //       text: TextSpan(
      //           style: GoogleFonts.exo2(color: kText2Color),
      //           children: <InlineSpan>[
      //             TextSpan(
      //                 text: '',
      //                 style: TextStyle(
      //                     fontSize: 25, color: kText2Color.withOpacity(0.6))),
      //           ]),
      //     ),
      //     iconBackground: Colors.transparent),
    ]
  };
}
