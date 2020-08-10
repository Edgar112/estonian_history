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

Map<List<Event>, List<Event>> getPeriod9() {
  return {
    [
      Event(
          name: "",
          date: "Rootsi aeg (1629–1710)",
          subDate: "",
          cover: "",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Rootsi aeg kestis Eestis peaaegu sada aastat ja tõi siinsetele elanikele kaasa palju olulisi muutusi. Neist tähtsamateks võib pidada kohtusüsteemi ümberkorraldamist ja uue haldusjaotuse väljakujunemist. Uus kohtusüsteem püsis Balti erikorra osana osaliselt isegi kuni 19. sajandi lõpuni.\n\n',
                      style: TextStyle(fontSize: 25)),
                  TextSpan(
                      text:
                          'Levinud on komme nimetada seda aega "vanaks heaks Rootsi ajaks". "Hea aeg" kestis tegelikult väga vähe aega, Rootsi kuninga Karl XI valitsemise ajal kuni 1695.-97. aasta suure näljani. Mõisate reduktsioon, riigitalupoegade pärisorjusest vabastamine, talurahvakoolid ja rahvavalgustus tõid lühikese ajaga kaasa olulise muutuse rahva mentaliteedis.\n\n',
                      style: TextStyle(fontSize: 25)),
                  TextSpan(text: '', style: TextStyle(fontSize: 25)),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture('Rootsi kuningriik ja dominioonid 1658. aastal',
                        'assets/illustrations/Swedish_Empire_1658.jpg')
                  ])),
                  TextSpan(text: '\n\n', style: TextStyle(fontSize: 25)),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture('Rootsi krooni Idaprovintsid',
                        'assets/illustrations/1024px-Sw_BalticPr_17cen.jpg')
                  ])),
                ]),
          ),
          iconBackground: Colors.transparent),
    ]: [
      Event(
          name: "",
          date: "1630",
          subDate: "",
          cover: "Tartus asutati Eesti esimene gümnaasium.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Tartus asutati Eesti esimene gümnaasium.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1631",
          subDate: "",
          cover:
              "Tartus asutati Eesti esimene trükikoda; asutati Tallinna gümnaasium (Eesti vanim keskkool, nüüd Gustav Adolfi gümnaasium).",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Tartus asutati Eesti esimene trükikoda; asutati Tallinna gümnaasium (Eesti vanim keskkool, nüüd Gustav Adolfi gümnaasium).',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1632–56",
          subDate: "",
          cover: "Tartu ülikooli esimene tegevusjärk (Academia Gustaviana).",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Tartu ülikooli esimene tegevusjärk (Academia Gustaviana).',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1643–45",
          subDate: "",
          cover: "Taani-Rootsi sõda.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Taani-Rootsi sõda.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1645",
          subDate: "",
          cover: "Brömsebro rahu, millega Taani loovutas Saaremaa Rootsile.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Brömsebro rahu, millega Taani loovutas Saaremaa Rootsile.\n\n',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture(
                        'Brömsebro rahuga Rootsile läinud alad (kaardil kollasega, Halland punasega)',
                        'assets/illustrations/Scandinavia_1645.gif')
                  ])),
                ]),
          ),
          more: true,
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1656–61",
          subDate: "",
          cover: "Rootsi-Vene sõda.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Rootsi-Vene sõda.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1657–58",
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
          date: "1661",
          subDate: "21. juuni",
          cover: "Kärde rahu (Rootsi ja Venemaa vahel).",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Kärde rahu (Rootsi ja Venemaa vahel).\n\n',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                  TextSpan(
                      text:
                          'Lepingu järgi sai Rootsi tagasi Ida-Eesti (sealhulgas Tartu) ja Ida-Läti (sh Alūksne, Koknese ja Vastseliina), mille Moskoovia oli Vallisaare vaherahuga 1658 endale saanud. Kärde rahulepinguga taastati sõjaeelne Stolbovo rahuga määratud piir.\n\n',
                      style: TextStyle(fontSize: 25)),
                  TextSpan(
                      text: 'Vallisaare vaherahu\n\n',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
                  TextSpan(
                      text:
                          'oli Rootsi ja Moskva tsaaririigi (Venemaa) vahel 20. detsembril 1658 Vallisaare mõisas (Usnowa) Vaivara kihelkonnas Virumaal sõlmitud kokkulepe, millega katkestati osapoolte sõjategevus kolmeks aastaks.\n\n',
                      style: TextStyle(fontSize: 25)),
                  TextSpan(
                      text: 'Stolbovo rahu\n\n',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
                  TextSpan(
                      text:
                          'Stolbovo rahu sõlmiti 27. veebruaril 1617 Rootsi kuningriigi ja Moskva tsaaririigi vahel Stolbovo külas Tihvini lähedal Venemaal.',
                      style: TextStyle(fontSize: 25)),
                ]),
          ),
          more: true,
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1675",
          subDate: "",
          cover:
              "Tallinnas alustab ilmumist Ordinari Post-Zeitung - esimene ajaleht Baltikumis.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Tallinnas alustab ilmumist Ordinari Post-Zeitung - esimene ajaleht Baltikumis.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1680–1700",
          subDate: "",
          cover: "Riigistati valdav osa mõisaid.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Riigistati valdav osa mõisaid.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1684–88",
          subDate: "",
          cover:
              "Tartu lähedal tegutses esimene Eesti koolmeistrite kool – nn Forseliuse seminar.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Tartu lähedal tegutses esimene Eesti koolmeistrite kool – nn Forseliuse seminar.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1687",
          subDate: "",
          cover: "Algas laialdane talurahvakoolide asutamine.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Algas laialdane talurahvakoolide asutamine.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1690–1710",
          subDate: "",
          cover:
              "Tartu ülikooli teine tegevusjärk (Academia Gustavo-Carolina, 1699–1710 Pärnus).",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Tartu ülikooli teine tegevusjärk (Academia Gustavo-Carolina, 1699–1710 Pärnus).',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1695–97",
          subDate: "",
          cover:
              "Suur nälg Eestis; suri 70 000–75 000 inimest - viiendik tolleaegsest Eesti rahvastikust.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Suur nälg Eestis; suri 70 000–75 000 inimest - viiendik tolleaegsest Eesti rahvastikust.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1699",
          subDate: "",
          cover:
              "Vene tsaar Peeter l, Poola kuningas ja Saksi kuurvürst August II ning Taani kuningas Frederik IV sõlmisid sõjalise liidu Rootsi kuninga Karl XII vastu.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Vene tsaar Peeter l, Poola kuningas ja Saksi kuurvürst August II ning Taani kuningas Frederik IV sõlmisid sõjalise liidu Rootsi kuninga Karl XII vastu.\n\n',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture('Peeter I', 'assets/illustrations/peter1.jpg'),
                    Picture(
                        'Saksi kuurvürst ja Poola kuningas August II Tugev.',
                        'assets/illustrations/August2.jpg'),
                    Picture(
                        'Frederik IV', 'assets/illustrations/Frederick4.jpg'),
                    Picture('Karl XII', 'assets/illustrations/Karl12.jpg'),
                  ])),
                ]),
          ),
          more: true,
          iconBackground: Colors.transparent),
    ]
  };
}
