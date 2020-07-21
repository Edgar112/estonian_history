import 'package:estonian_history/constants.dart';
import 'package:estonian_history/models/event.dart';
import 'package:estonian_history/global.dart';
import 'package:estonian_history/models/picture.dart';
import 'package:estonian_history/widgets/imageSwiper.dart';
import 'package:estonian_history/widgets/myMap.dart';
import 'package:estonian_history/transitions/fade_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
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
        date: "u 1050",
        subDate: "",
        cover:
            "Algas eestlaste viikingiaeg (Eesti meremeeste kauba- ja röövretked üle Läänemere).",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <InlineSpan>[
                TextSpan(
                    text:
                        'Algas eestlaste viikingiaeg (Eesti meremeeste kauba- ja röövretked üle Läänemere).',
                    style: TextStyle(
                        fontSize: 25, color: kText2Color.withOpacity(0.6))),
              ]),
        ),
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "1061",
        subDate: "",
        cover: "Eestlased vallutasid venelastelt Tarbatu linnuse tagasi.",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <InlineSpan>[
                TextSpan(
                    text:
                        'Eestlased vallutasid venelastelt Tarbatu linnuse tagasi.',
                    style: TextStyle(
                        fontSize: 25, color: kText2Color.withOpacity(0.6))),
              ]),
        ),
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "1154",
        subDate: "",
        cover:
            "Eesti (Astlanda) esmakordne märkimine – araabia geograafi Abu Abdallah Muhammad al-ldrisi maailmakaardil.",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <InlineSpan>[
                TextSpan(
                    text:
                        'Eesti (Astlanda) esmakordne märkimine – araabia geograafi Abu Abdallah Muhammad al-ldrisi maailmakaardil.',
                    style: TextStyle(
                        fontSize: 25, color: kText2Color.withOpacity(0.6))),
                WidgetSpan(
                    child: ImageSwiper([
                  Picture(
                      'Maailmakaart Tabula Rogeriana (pööratud), koostatud al-Idrīsī 1154. a atlase järgi',
                      'assets/illustrations/1154map.jpg')
                ]))
              ]),
        ),
        more: true,
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "u 1165",
        subDate: "",
        cover:
            "Lundi peapiiskop pühitses benediktlase Fulco Eestimaa piiskopiks.",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <InlineSpan>[
                TextSpan(
                    text:
                        'Lundi peapiiskop pühitses benediktlase Fulco Eestimaa piiskopiks.\n\n',
                    style: TextStyle(
                        fontSize: 25, color: kText2Color.withOpacity(0.6))),
                TextSpan(
                    text: 'Fulco\n\n',
                    style: TextStyle(
                        fontSize: 25,
                        color: kText2Color,
                        fontWeight: FontWeight.w600)),
                TextSpan(
                    text:
                        'Fulco oli benediktiini munk, kelle Lundi peapiiskop Eskil määras umbes 1165. aastal Eestimaa piiskopiks. On oletatud, et Fulco käis ajavahemikus 1169–1178 kahel korral Eestis. Tõenäoliselt jäid tema katsed Eestis ristiusku levitada tulutuks, samuti jäi tõenäoliselt tagajärjetuks paavst Aleksander III üleskutse ristiretkeks Eestisse. Paavst esitas ka palve määrata Fulco abiliseks Stavangeri kloostri eestlasest munk Nicolaus.\n\nFulcoga on, tõenäoliselt ebakorrektselt, samastatud Soome piiskoppi Folkvinust.',
                    style: TextStyle(fontSize: 25, color: kText2Color)),
              ]),
        ),
        more: true,
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "1169 või 1170",
        subDate: "",
        cover: "Piiskop Fulco oletatav esimene misjoniretk Eestisse.",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <InlineSpan>[
                TextSpan(
                    text:
                        'Piiskop Fulco oletatav esimene misjoniretk Eestisse.',
                    style: TextStyle(
                        fontSize: 25, color: kText2Color.withOpacity(0.6))),
              ]),
        ),
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "u 1177",
        subDate: "",
        cover: "Piiskop Fulco oletatav teine misjoniretk Eestisse.",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <InlineSpan>[
                TextSpan(
                    text: 'Piiskop Fulco oletatav teine misjoniretk Eestisse.',
                    style: TextStyle(
                        fontSize: 25, color: kText2Color.withOpacity(0.6))),
              ]),
        ),
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "1202",
        subDate: "",
        cover:
            "Paavst Innocentius III kuulutas Vana-Liivimaa ristiusku pööramiseks ristisõja, asutati Mõõgavendade Ordu.",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <InlineSpan>[
                TextSpan(
                    text:
                        'Paavst Innocentius III kuulutas Vana-Liivimaa ristiusku pööramiseks ristisõja, asutati Mõõgavendade Ordu.\n\n',
                    style: TextStyle(
                        fontSize: 25, color: kText2Color.withOpacity(0.6))),
                WidgetSpan(
                    child: ImageSwiper([
                  Picture('Liivlaste ja Balti hõimude asuala ca 1200 pKr.',
                      'assets/illustrations/Baltic_Tribes_ca_1200_AD.jpg'),
                  Picture('Mõõgavendade ordu vapp',
                      'assets/illustrations/moogaOrdu.png'),
                  Picture('Mõõgavendade ordu ordumeistri pitser',
                      'assets/illustrations/SwordBrothers.png')
                ], SwiperLayout.DEFAULT)),
              ]),
        ),
        more: true,
        iconBackground: Colors.transparent),
  ];
}
