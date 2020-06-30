import 'package:estonian_history/constants.dart';
import 'package:estonian_history/global.dart';
import 'package:estonian_history/myMap.dart';
import 'package:estonian_history/transitions/fade_route.dart';
import 'package:estonian_history/widgets/HeroPhotoViewWrapper.dart';
import 'package:estonian_history/widgets/imagePopUp.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Event {
  final String name;
  final String cover;
  final Widget text;
  final String image;
  final Color iconBackground;
  final Icon icon;
  final String date;
  final String subDate;
  final bool more;
  Event(
      {this.name,
      this.cover,
      this.text,
      this.image,
      this.icon,
      this.iconBackground,
      this.date,
      this.subDate,
      this.more = false});
}

List<Event> getEvents() {
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
                    text: 'Eesti ala vabanes jääst.\n',
                    style: TextStyle(
                        fontSize: 25, color: kText2Color.withOpacity(0.6)),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // open desired screen
                      }),
                TextSpan(
                    text:
                        'Jääaegsed liustikud taandusid Kagu-Eestist järk-järgult loode poole ja kujundasid maastikku.',
                    style: TextStyle(
                        fontSize: 20, color: kText2Color.withOpacity(0.6))),
              ]),
        ),
        iconBackground: Colors.red),
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
                                    coordinates:
                                        LatLng(58.419206, 24.676686))));
                      }),
                TextSpan(
                  text: ' peatus mõnda aega rühm küttijaid ja kalastajaid.',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
              ]),
        ),
        more: true,
        iconBackground: Colors.red),
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
        iconBackground: Colors.red),
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
            "Kesk-Eesti neisse piirkondadesse, kus leidus kohalikku looduslikku tulekivi, rajati mitu asulat. Omaaegsed eluasemed kerkisid Navesti jõe ääres Jäleveres ja Lepakosel, Võrtsjärve põhjaranniku voortele Siimusaares, Umbusis ja Moksis.",
        text: RichText(
          text: TextSpan(
              style: GoogleFonts.gabriela(color: kText2Color),
              children: <TextSpan>[
                TextSpan(
                  text:
                      'Kesk-Eesti neisse piirkondadesse, kus leidus kohalikku looduslikku tulekivi, rajati mitu asulat. Omaaegsed eluasemed kerkisid Navesti jõe ääres Jäleveres ja Lepakosel, Võrtsjärve põhjaranniku voortele Siimusaares, Umbusis ja Moksis.',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
              ]),
        ),
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
                      'Asustus hakkas levima vahetusse rannikuvööndisse, mille asulate elanikud tegelesid ka hülgeküttimisega. U 5800 eKr jõudsid hülgekütid Saaremaale, u 5700 eKr Hiiumaale ja 5300 eKr Ruhnu saarele.',
                  style: TextStyle(
                      fontSize: 25, color: kText2Color.withOpacity(0.6)),
                ),
              ]),
        ),
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
