import 'package:estonian_history/constants.dart';
import 'package:estonian_history/helper/event.dart';
import 'package:estonian_history/global.dart';
import 'package:estonian_history/helper/picture.dart';
import 'package:estonian_history/widgets/imageSwiper.dart';
import 'package:estonian_history/widgets/myMap.dart';
import 'package:estonian_history/transitions/fade_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<Event> getPeriod3() {
  return [
    Event(
        name: "",
        date: "1208",
        subDate: "",
        cover:
            "Mõõgavendade Ordu sõjaretk Ugandisse koos ristitud lätlaste ja liivlastega, Otepää mahapõletamine; ugalaste ja sakalaste vasturetk lätlaste aladele; lätlaste rüüsteretk Sakalasse; aasta lõpus sõlmiti üheks aastaks rahu.",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <InlineSpan>[
                TextSpan(
                    text:
                        'Mõõgavendade Ordu sõjaretk Ugandisse koos ristitud lätlaste ja liivlastega, Otepää mahapõletamine; ugalaste ja sakalaste vasturetk lätlaste aladele; lätlaste rüüsteretk Sakalasse; aasta lõpus sõlmiti üheks aastaks rahu.',
                    style: TextStyle(
                        fontSize: 25, color: kText2Color.withOpacity(0.6))),
              ]),
        ),
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "1210",
        subDate: "",
        cover:
            "Venelaste retk Ugandisse; ordu, piiskopi, lätlaste ja liivlaste retk Ugandisse ja Otepää teine põletamine; eestlaste retk Võnnu alla, võit Ümera lahingus sakslaste, lätlaste ja liivlaste väe üle; aasta lõpus sakslaste, lätlaste, liivlaste ja venelaste retk Soontaganasse.",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <InlineSpan>[
                TextSpan(
                    text:
                        'Venelaste retk Ugandisse; ordu, piiskopi, lätlaste ja liivlaste retk Ugandisse ja Otepää teine põletamine; eestlaste retk Võnnu alla, võit Ümera lahingus sakslaste, lätlaste ja liivlaste väe üle; aasta lõpus sakslaste, lätlaste, liivlaste ja venelaste retk Soontaganasse.',
                    style: TextStyle(
                        fontSize: 25, color: kText2Color.withOpacity(0.6))),
              ]),
        ),
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "1210–11",
        subDate: "",
        cover: "Esimene teadaolev katk Eestis.",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <InlineSpan>[
                TextSpan(
                    text: 'Esimene teadaolev katk Eestis.',
                    style: TextStyle(
                        fontSize: 25, color: kText2Color.withOpacity(0.6))),
              ]),
        ),
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "1211",
        subDate: "",
        cover:
            "Eestlaste retked Lätisse; sakslaste, lätlaste ja liivlaste retked Eestisse, Viljandi linnuse piiramine ja alistamine, eestlaste ristimine Sakalas; eestlased piirasid Turaida linnust ja said Koiva lahingus lüüa; venelaste retk Varbola alla; Lembitu retk Pihkvasse.",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <InlineSpan>[
                TextSpan(
                    text:
                        'Eestlaste retked Lätisse; sakslaste, lätlaste ja liivlaste retked Eestisse, Viljandi linnuse piiramine ja alistamine, eestlaste ristimine Sakalas; eestlased piirasid Turaida linnust ja said Koiva lahingus lüüa; venelaste retk Varbola alla; Lembitu retk Pihkvasse.',
                    style: TextStyle(
                        fontSize: 25, color: kText2Color.withOpacity(0.6))),
              ]),
        ),
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "1212",
        subDate: "",
        cover:
            "Turaidas sõlmisid eestlased ja sakslased kolmeks aastaks vaherahu.",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
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
              style: GoogleFonts.gabriela(color: kText2Color),
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
              style: GoogleFonts.gabriela(color: kText2Color),
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
              style: GoogleFonts.gabriela(color: kText2Color),
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
              style: GoogleFonts.gabriela(color: kText2Color),
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
            "Talvel sakslaste, lätlaste ja liivlaste retk Läänemaale, läänlaste ristimine ja maksustamine; kevadel saarlaste retk Põhja-Lätisse; jaanipäeval piiskop Alberti abipalve Taani kuningale Valdemar Il-le eestlaste ühiseks alistamiseks; sügisel sakslaste 2 lahingut venelastega Väikese Emajõe juures; harjulased piirasid koos venelastega Võnnut (Cēsist).",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <InlineSpan>[
                TextSpan(
                    text:
                        'Talvel sakslaste, lätlaste ja liivlaste retk Läänemaale, läänlaste ristimine ja maksustamine; kevadel saarlaste retk Põhja-Lätisse; jaanipäeval piiskop Alberti abipalve Taani kuningale Valdemar Il-le eestlaste ühiseks alistamiseks; sügisel sakslaste 2 lahingut venelastega Väikese Emajõe juures; harjulased piirasid koos venelastega Võnnut (Cēsist).',
                    style: TextStyle(
                        fontSize: 25, color: kText2Color.withOpacity(0.6))),
              ]),
        ),
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "1219",
        subDate: "",
        cover:
            "Talvel sakslaste, lätlaste ja liivlaste retk Harjusse ja Revalasse; suvel taanlaste laevastiku maabumine Lindanise linnuse all, Lindanise lahing, Revala alistamine ja ristimine; sügisel sakslaste, lätlaste ja sakalaste retk Järvamaale.",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <InlineSpan>[
                TextSpan(
                    text:
                        'Talvel sakslaste, lätlaste ja liivlaste retk Harjusse ja Revalasse; suvel taanlaste laevastiku maabumine Lindanise linnuse all, Lindanise lahing, Revala alistamine ja ristimine; sügisel sakslaste, lätlaste ja sakalaste retk Järvamaale.',
                    style: TextStyle(
                        fontSize: 25, color: kText2Color.withOpacity(0.6))),
              ]),
        ),
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "1220",
        subDate: "",
        cover:
            "Talvel sakslaste, lätlaste, liivlaste, järvalaste, ugalaste ja sakalaste retk Virumaale; seejärel saarlaste rüüsteretk Järvamaale ristitud eestlaste vastu; sakslaste, lätlaste, liivlaste ja ristitud eestlaste retk Harjusse ja Revalasse; Virumaa ristimine; suvel tungisid rootslased Läänemaale, vallutasid Lihula linnuse ja ristisid ümbruskonna rahvast, augustis vallutasid linnuse saarlased.",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <InlineSpan>[
                TextSpan(
                    text:
                        'Talvel sakslaste, lätlaste, liivlaste, järvalaste, ugalaste ja sakalaste retk Virumaale; seejärel saarlaste rüüsteretk Järvamaale ristitud eestlaste vastu; sakslaste, lätlaste, liivlaste ja ristitud eestlaste retk Harjusse ja Revalasse; Virumaa ristimine; suvel tungisid rootslased Läänemaale, vallutasid Lihula linnuse ja ristisid ümbruskonna rahvast, augustis vallutasid linnuse saarlased.',
                    style: TextStyle(
                        fontSize: 25, color: kText2Color.withOpacity(0.6))),
              ]),
        ),
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "1221",
        subDate: "",
        cover:
            "Aprillis saarlaste ja põhjaeestlaste ebaõnnestunud katse Tallinna taanlastelt tagasi vallutada, taanlaste ja sakslaste leping mõjupiiride kohta; hakati täitma ristiusu väliseid kombeid.",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
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
              style: GoogleFonts.gabriela(color: kText2Color),
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
              style: GoogleFonts.gabriela(color: kText2Color),
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
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <InlineSpan>[
                TextSpan(
                    text:
                        'Jaanuaris sakslaste retk Harjumaale; augustis piirasid sakslased Tarbatu linnust, kogu Mandri-Eesti alistus ja võttis uuesti vastu ristiusu.',
                    style: TextStyle(
                        fontSize: 25, color: kText2Color.withOpacity(0.6))),
              ]),
        ),
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "1227",
        subDate: "",
        cover:
            "Veebruaris vallutas sakslaste, lätlaste, liivlaste ja mandrieestlaste vägi Muhu linnuse; hävitati Valjala linnus; kogu Saaremaa allutati, rahvas ristiti.",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <InlineSpan>[
                TextSpan(
                    text:
                        'Veebruaris vallutas sakslaste, lätlaste, liivlaste ja mandrieestlaste vägi Muhu linnuse; hävitati Valjala linnus; kogu Saaremaa allutati, rahvas ristiti.',
                    style: TextStyle(
                        fontSize: 25, color: kText2Color.withOpacity(0.6))),
              ]),
        ),
        iconBackground: Colors.transparent),
    // Event(
    //     name: "",
    //     date: "",
    //     subDate: "",
    //     cover: "",
    //     text: RichText(
    //       text: TextSpan(
    //           style: GoogleFonts.gabriela(color: kText2Color),
    //           children: <InlineSpan>[
    //             TextSpan(
    //                 text: '',
    //                 style: TextStyle(
    //                     fontSize: 25, color: kText2Color.withOpacity(0.6))),
    //             WidgetSpan(child: ImageSwiper([Picture('', '')]))
    //           ]),
    //     ),
    //     iconBackground: Colors.transparent),
  ];
}
