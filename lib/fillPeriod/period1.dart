import 'package:estonian_history/constants.dart';
import 'package:estonian_history/helper/event.dart';
import 'package:estonian_history/global.dart';
import 'package:estonian_history/myMap.dart';
import 'package:estonian_history/transitions/fade_route.dart';
import 'package:estonian_history/widgets/HeroPhotoViewWrapper.dart';
import 'package:estonian_history/widgets/imagePopUp.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gradient_colors/flutter_gradient_colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

List<Event> getPeriod1() {
  return [
    Event(
        name: "Eesti ala vabanes jääst",
        date: "13 000-11 000\neKr",
        subDate: "",
        cover:
            "Jääaegsed liustikud taandusid Kagu-Eestist järk-järgult loode poole ja kujundasid maastikku.",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <TextSpan>[
                TextSpan(
                    text:
                        'Eesti ala vabanes jääst. Jääaegsed liustikud taandusid Kagu-Eestist järk-järgult loode poole ja kujundasid maastikku.',
                    style: TextStyle(
                        fontSize: 25, color: kText2Color.withOpacity(0.6))),
              ]),
        ),
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "U 9000 eKr",
        subDate: "",
        cover:
            "Pärnu jõe paremal kaldal Pullis peatus mõnda aega rühm küttijaid ja kalastajaid.",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <TextSpan>[
                TextSpan(
                  text: 'Pärnu jõe paremal kaldal ',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
                TextSpan(
                    text: 'Pullis',
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
                              coordinates: LatLng(58.419206, 24.676686),
                              drawCircles: true,
                            )));
                      }),
                TextSpan(
                  text: ' peatus mõnda aega rühm küttijaid ja kalastajaid.',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
              ]),
        ),
        more: true,
        iconBackground: Colors.transparent),
    Event(
        name: "Mesoliitikum",
        date: "9000–5000 eKr",
        subDate: "",
        cover:
            "Mesoliitikum ehk keskmine kiviaeg. Kõik selle ajajärgu ligi sadakond asulakohta (sh Pulli) kuulusid Kunda kultuuri, mida iseloomustavad rohked luu- ja sarvriistad ning vähesed kvartsist ja tulekivist esemed.",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <InlineSpan>[
                TextSpan(
                  text:
                      'Mesoliitikum ehk keskmine kiviaeg. Kõik selle ajajärgu ligi sadakond asulakohta (sh Pulli) kuulusid Kunda kultuuri, mida iseloomustavad rohked luu- ja sarvriistad ning vähesed kvartsist ja tulekivist esemed.\n\n\n',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
                TextSpan(
                  text: 'Hiline mesoliitikum\n\n',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                ),
                TextSpan(
                  text:
                      "6.–5. aastatuhandel eKr muutus ilmastik niiskemaks, jäädes seejuures soojaks. Talved olid pehmed ja taimekasvuperiood pikenes. Algas taimedele väga soodne kasvuperiood. Kõikjal vähegi sobivatel aladel kasvasid lopsakad metsad. Üha enam levisid laialehelised puuliigid, eriti jalakas, pärn ja tamm. On arvatud, et lehtpuud ületasid oma hulgalt okaspuid kolmekordselt. Metsades elutses rikkalik loomastik. Samal ajal tekkis Läänemere nõos olnud veekogul jälle ühendus ookeaniga. Vesi alanes ja muutus soolasemaks. Seda Läänemere staadiumi nimetatakse Litoriinamereks.\n\n",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                WidgetSpan(
                  child: ImagePupUp('assets/illustrations/laanemeriJarv.png',
                      'Antsülusjärv', 'Antsülusjärv'),
                ),
              ]),
        ),
        more: true,
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "U 8700 eKr",
        subDate: "",
        cover:
            "Kunda Lammasmäele, madalaveelises järves paiknevale saarekesele, rajati esimest korda hooajaline asula, mida kasutati ka edaspidi.",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <TextSpan>[
                TextSpan(
                    text: 'Kunda Lammasmäele',
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
                              coordinates: LatLng(59.477513, 26.533142),
                              radius: 3700,
                              zoom: 12,
                              drawCircles: true,
                            )));
                      }),
                TextSpan(
                  text:
                      ', madalaveelises järves paiknevale saarekesele, rajati esimest korda hooajaline asula, mida kasutati ka edaspidi.',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
              ]),
        ),
        more: true,
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "U 9000–7000 eKr",
        subDate: "",
        cover:
            "Kesk-Eesti neisse piirkondadesse, kus leidus kohalikku looduslikku tulekivi, rajati mitu asulat. Omaaegsed eluasemed kerkisid  ja Lepakosel, Võrtsjärve põhjaranniku voortele Siimusaares, Umbusis ja Moksis.",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <TextSpan>[
                TextSpan(
                  text:
                      'Kesk-Eesti neisse piirkondadesse, kus leidus kohalikku looduslikku tulekivi, rajati mitu asulat. Omaaegsed eluasemed kerkisid ',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
                TextSpan(
                    text: 'Navesti jõe ääres Jäleveres',
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
                              coordinates: LatLng(58.599945, 25.442597),
                              radius: 2000,
                              zoom: 13,
                              drawCircles: true,
                            )));
                      }),
                TextSpan(
                  text: ' ja ',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
                TextSpan(
                    text: 'Lepakosel',
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
                              coordinates: LatLng(58.581076, 25.341798),
                              radius: 1000,
                              zoom: 14,
                              drawCircles: true,
                            )));
                      }),
                TextSpan(
                  text: ', Võrtsjärve põhjaranniku voortele ',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
                TextSpan(
                    text: 'Siimusaares',
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
                              coordinates: LatLng(58.449563, 26.081797),
                              radius: 500,
                              zoom: 14,
                              drawCircles: true,
                            )));
                      }),
                TextSpan(
                  text: ', ',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
                TextSpan(
                    text: 'Umbusis',
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
                              coordinates: LatLng(58.571270, 26.106775),
                              radius: 2000,
                              zoom: 13,
                              drawCircles: true,
                            )));
                      }),
                TextSpan(
                  text: ' ja ',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
                TextSpan(
                    text: 'Moksis',
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
                              coordinates: LatLng(58.439427, 26.06924),
                              radius: 1000,
                              zoom: 14,
                              drawCircles: true,
                            )));
                      }),
                TextSpan(
                  text: '.',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
              ]),
        ),
        more: true,
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "U 7100 eKr",
        subDate: "",
        cover:
            "Asustus hakkas levima vahetusse rannikuvööndisse, mille asulate elanikud tegelesid ka hülgeküttimisega. U 5800 eKr jõudsid hülgekütid Saaremaale, u 5700 eKr Hiiumaale ja 5300 eKr Ruhnu saarele.",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <TextSpan>[
                TextSpan(
                  text:
                      'Asustus hakkas levima vahetusse rannikuvööndisse, mille asulate elanikud tegelesid ka hülgeküttimisega. U 5800 eKr jõudsid hülgekütid ',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
                TextSpan(
                    text: 'Saaremaale',
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
                              coordinates: LatLng(58.408858, 22.522950),
                              zoom: 9,
                            )));
                      }),
                TextSpan(
                  text: ', u 5700 eKr ',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
                TextSpan(
                    text: 'Hiiumaale',
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
                              coordinates: LatLng(58.915214, 22.618695),
                              zoom: 9,
                            )));
                      }),
                TextSpan(
                  text: ' ja 5300 eKr ',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
                TextSpan(
                    text: 'Ruhnu',
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
                              coordinates: LatLng(57.806061, 23.246122),
                              zoom: 12,
                            )));
                      }),
                TextSpan(
                  text: ' saarele.',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
              ]),
        ),
        more: true,
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "U 5000 eKr",
        subDate: "",
        cover:
            "Keraamika kasutuselevõtmisega algas Eestis neoliitikum ehk noorem kiviaeg, mis kestis kuni u 1800 eKr. Keraamika esimese leiukoha järgi seostatakse neoliitikumi varaseimat järku Narva kultuuriga.",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <TextSpan>[
                TextSpan(
                  text:
                      'Keraamika kasutuselevõtmisega algas Eestis neoliitikum ehk noorem kiviaeg, mis kestis kuni u 1800 eKr. Keraamika esimese leiukoha järgi seostatakse neoliitikumi varaseimat järku Narva kultuuriga.',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
              ]),
        ),
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "U 4000 eKr",
        subDate: "",
        cover:
            "	Kasutusele võeti uus savinõude tüüp, mida nimetatakse kammijäljendeid meenutava ornamendi järgi tüüpiliseks kammkeraamikaks. Asulad, näiteks Valma, Akali, Kullamäe ja Narva, rajati endiselt veekogu lähedusse.",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <TextSpan>[
                TextSpan(
                  text:
                      'Kasutusele võeti uus savinõude tüüp, mida nimetatakse kammijäljendeid meenutava ornamendi järgi tüüpiliseks kammkeraamikaks. Asulad, näiteks ',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
                TextSpan(
                    text: 'Valma',
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
                              coordinates: LatLng(58.364207, 25.959744),
                              zoom: 14,
                              radius: 1200,
                              drawCircles: true,
                            )));
                      }),
                TextSpan(
                  text: ', ',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
                TextSpan(
                    text: 'Akali',
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
                              coordinates: LatLng(58.407817, 27.230189),
                              zoom: 15,
                              radius: 300,
                              drawCircles: true,
                            )));
                      }),
                TextSpan(
                  text: ', ',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
                TextSpan(
                    text: 'Kullamäe',
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
                              coordinates: LatLng(59.494363, 25.325544),
                              zoom: 14,
                              radius: 1000,
                              drawCircles: true,
                            )));
                      }),
                TextSpan(
                  text: ' ja ',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
                TextSpan(
                    text: 'Narva',
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
                              coordinates: LatLng(59.378113, 28.182974),
                              zoom: 11,
                            )));
                      }),
                TextSpan(
                  text: ', rajati endiselt veekogu lähedusse.',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
              ]),
        ),
        more: true,
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "U 3900–3500 eKr",
        subDate: "",
        cover:
            "Eesti soode selleaegsetes kihtides leidub kultuurtaimede õietolmu (oder, nisu, kaer), mis viitab võimalusele, et teatud määral tegeldi siin juba maaviljelusega.",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <TextSpan>[
                TextSpan(
                  text:
                      'Eesti soode selleaegsetes kihtides leidub kultuurtaimede õietolmu (oder, nisu, kaer), mis viitab võimalusele, et teatud määral tegeldi siin juba maaviljelusega.',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
              ]),
        ),
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "U 3000 eKr",
        subDate: "",
        cover:
            "Eestis hakkas levima nöörkeraamika kultuur, mis tõi kaasa uut tüüpi muistised, esemed ja kombestiku. Kõige iseloomulikumad on nöörijäljenditega ilustatud savinõud ja vene ehk paati meenutavad silmaaukudega kivikirved (nn venekirved).",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <TextSpan>[
                TextSpan(
                  text:
                      'Eestis hakkas levima nöörkeraamika kultuur, mis tõi kaasa uut tüüpi muistised, esemed ja kombestiku. Kõige iseloomulikumad on nöörijäljenditega ilustatud savinõud ja vene ehk paati meenutavad silmaaukudega kivikirved (nn venekirved).',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
              ]),
        ),
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "U 2700 eKr",
        subDate: "",
        cover:
            "Nagu mitmel pool Põhja- ja Ida-Euroopas levis ka Eestis tekstiilkeraamika - savinõud, mille välispinnale vajutatakse mustriks jämedakoeline riie.",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <TextSpan>[
                TextSpan(
                  text:
                      'Nagu mitmel pool Põhja- ja Ida-Euroopas levis ka Eestis tekstiilkeraamika - savinõud, mille välispinnale vajutatakse mustriks jämedakoeline riie.',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
              ]),
        ),
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "U 1800 eKr",
        subDate: "",
        cover:
            "Eestis algas pronksiaeg, mis kestis kuni u 500 aastani eKr. Vanimad seni leitud pronksesemed on odaots (Muhu saarelt), mis pärines Uurali aladelt, ja sirp (Võrtsjärve äärest Kivisaarest), mis jõudis siia Ukraina piirkonnast.",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <TextSpan>[
                TextSpan(
                  text:
                      'Eestis algas pronksiaeg, mis kestis kuni u 500 aastani eKr. Vanimad seni leitud pronksesemed on odaots (',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
                TextSpan(
                    text: 'Muhu saarelt',
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
                              coordinates: LatLng(58.599877, 23.251389),
                              zoom: 11,
                              radius: 8000,
                              drawCircles: true,
                            )));
                      }),
                TextSpan(
                  text:
                      '), mis pärines Uurali aladelt, ja sirp (Võrtsjärve äärest ',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
                TextSpan(
                    text: 'Kivisaarest',
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
                              coordinates: LatLng(58.456546, 26.087795),
                              zoom: 14,
                              radius: 500,
                              drawCircles: true,
                            )));
                      }),
                TextSpan(
                  text: '), mis jõudis siia Ukraina piirkonnast.',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
              ]),
        ),
        more: true,
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "U 1100–1000 eKr",
        subDate: "",
        cover:
            "Põhja- ja Lääne-Eesti ning Saaremaa elanike tegevuses ja maailmavaates leidsid aset olulised muutused, millest annavad tunnistust uut tüüpi muistised.",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <InlineSpan>[
                TextSpan(
                  text:
                      'Põhja- ja Lääne-Eesti ning Saaremaa elanike tegevuses ja maailmavaates leidsid aset olulised muutused, millest annavad tunnistust uut tüüpi muistised.\n\n',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
                TextSpan(
                  text:
                      'Nn nooremal pronksiajal (1100–500 eKr) kerkisid kindlustatud asulad ',
                  style: TextStyle(fontSize: 25),
                ),
                TextSpan(
                    text: 'Saaremaal',
                    style: TextStyle(
                        fontSize: 25, decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                            contextHistoryInfo,
                            FadeRoute(
                                page: MyMap(
                              coordinates: LatLng(58.408858, 22.522950),
                              zoom: 9,
                            )));
                      }),
                TextSpan(
                  text: ' (',
                  style: TextStyle(fontSize: 25),
                ),
                TextSpan(
                    text: 'Asvas',
                    style: TextStyle(
                        fontSize: 25, decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                            contextHistoryInfo,
                            FadeRoute(
                                page: MyMap(
                              coordinates: LatLng(58.397367, 23.063003),
                              zoom: 14,
                              radius: 2000,
                              drawCircles: true,
                            )));
                      }),
                TextSpan(
                  text: ', ',
                  style: TextStyle(fontSize: 25),
                ),
                TextSpan(
                    text: 'Ridalas',
                    style: TextStyle(
                        fontSize: 25, decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                            contextHistoryInfo,
                            FadeRoute(
                                page: MyMap(
                              coordinates: LatLng(58.448349, 23.050046),
                              zoom: 14,
                              radius: 2000,
                              drawCircles: true,
                            )));
                      }),
                TextSpan(
                  text: ', ',
                  style: TextStyle(fontSize: 25),
                ),
                TextSpan(
                    text: 'Kaalis',
                    style: TextStyle(
                        fontSize: 25, decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                            contextHistoryInfo,
                            FadeRoute(
                                page: MyMap(
                              coordinates: LatLng(58.363007, 22.667026),
                              zoom: 14,
                              radius: 1300,
                              drawCircles: true,
                            )));
                      }),
                TextSpan(
                  text: ') ning Eesti põhjarannikul (',
                  style: TextStyle(fontSize: 25),
                ),
                TextSpan(
                    text: 'Irus',
                    style: TextStyle(
                        fontSize: 25, decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                            contextHistoryInfo,
                            FadeRoute(
                                page: MyMap(
                              coordinates: LatLng(59.452862, 24.915678),
                              zoom: 14,
                              radius: 900,
                              drawCircles: true,
                            )));
                      }),
                TextSpan(
                  text: ') ja ',
                  style: TextStyle(fontSize: 25),
                ),
                TextSpan(
                    text: 'Narvas',
                    style: TextStyle(
                        fontSize: 25, decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        Navigator.push(
                            contextHistoryInfo,
                            FadeRoute(
                                page: MyMap(
                              coordinates: LatLng(59.378113, 28.182974),
                              zoom: 11,
                            )));
                      }),
                TextSpan(
                  text:
                      '. Nende elanikud tegelesid loomapidamise ja maaviljelusega. Hakati rajama maapealseid kivikirstkalmeid, mille põhielemendid on suurtest kividest koosnev 5–8 m läbimõõduga ring ja selle keskele laotud kirst, kuhu asetati lahkunu. Umbes sel ajal hakati osadele rändrahnudele toksima ümarapõhjalisi 5–10 cm läbimõõduga lohukesi.\n\n',
                  style: TextStyle(fontSize: 25),
                ),
                WidgetSpan(
                  child: ImagePupUp(
                      'assets/illustrations/kivikirstkalmistu.jpg',
                      'Kivikirstkalmistu',
                      'Kivikirstkalmistu'),
                ),
              ]),
        ),
        more: true,
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "U 500 eKr",
        subDate: "",
        cover:
            "Algas vanem rauaaeg, mille varasemat järku nimetatakse eelrooma rauaajaks (kuni u 50 pKr).",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <TextSpan>[
                TextSpan(
                  text:
                      'Algas vanem rauaaeg, mille varasemat järku nimetatakse eelrooma rauaajaks (kuni u 50 pKr).',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
              ]),
        ),
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "500–250 eKr",
        subDate: "",
        cover:
            "Kivikirstkalmete kõrval hakati ehitama uut tüüpi kivikalmeid - nn varaseid tarandkalmeid. Hakati rajama nn kelti põlde, mis võrreldes varasemate põldudega olid korrapärased.",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <TextSpan>[
                TextSpan(
                  text:
                      'Kivikirstkalmete kõrval hakati ehitama uut tüüpi kivikalmeid - nn varaseid tarandkalmeid. Hakati rajama nn kelti põlde, mis võrreldes varasemate põldudega olid korrapärased.',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
              ]),
        ),
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "250 eKr – 50 pKr",
        subDate: "",
        cover:
            "Ajutiselt kasutati mõnda linnust. Õpiti ise kohalikust soomaagist rauda sulatama.",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <TextSpan>[
                TextSpan(
                  text:
                      'Ajutiselt kasutati mõnda linnust. Õpiti ise kohalikust soomaagist rauda sulatama.',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
              ]),
        ),
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "",
        subDate: "",
        cover: "",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <TextSpan>[
                TextSpan(
                  text: '',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
              ]),
        ),
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "",
        subDate: "",
        cover: "",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <TextSpan>[
                TextSpan(
                  text: '',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
              ]),
        ),
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "",
        subDate: "",
        cover: "",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <TextSpan>[
                TextSpan(
                  text: '',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
              ]),
        ),
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "",
        subDate: "",
        cover: "",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <TextSpan>[
                TextSpan(
                  text: '',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
              ]),
        ),
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "",
        subDate: "",
        cover: "",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <TextSpan>[
                TextSpan(
                  text: '',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
              ]),
        ),
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "",
        subDate: "",
        cover: "",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <TextSpan>[
                TextSpan(
                  text: '',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
              ]),
        ),
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "",
        subDate: "",
        cover: "",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <TextSpan>[
                TextSpan(
                  text: '',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
              ]),
        ),
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "",
        subDate: "",
        cover: "",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <TextSpan>[
                TextSpan(
                  text: '',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
              ]),
        ),
        iconBackground: Colors.transparent),
    Event(
        name: "",
        date: "",
        subDate: "",
        cover: "",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <TextSpan>[
                TextSpan(
                  text: '',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
              ]),
        ),
        iconBackground: Colors.transparent),
  ];
}