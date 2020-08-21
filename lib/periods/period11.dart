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

Map<List<Event>, List<Event>> getPeriod11() {
  return {
    [null]: [
      Event(
          name: "",
          date: "1718",
          subDate: "",
          cover: "Hakati ehitama Kadrioru lossi.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Hakati ehitama Kadrioru lossi.\n\n',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                  TextSpan(
                      text:
                          '22. juulil 1718 mõõtis arhitekt Niccolò Michetti koos Peeter I-ga maha lossi ja aia plaani. Michetti planeeris pargi ja lossi kolmeosalisena Itaalia villade eeskujul.\n\n',
                      style: TextStyle(fontSize: 25)),
                  TextSpan(
                      text:
                          '1719. aastal said katuse alla tiibhooned, 1720–1721 ehitati lossi peahoone ja põhiosas valmis loss 1725. aastal.\n\n',
                      style: TextStyle(fontSize: 25)),
                  TextSpan(
                      text:
                          'Ehitusisand ei jõudnud ise lossi valmiskujul näha – lossi rajada lasknud keiser Peeter I suri juba 1725. aasta 8. veebruaril, mil lossi ehitamine oli alles pooleli. Tema surma järel rakendatud kokkuhoiupoliitika tõttu jäid ehitustööd soiku.\n\n',
                      style: TextStyle(fontSize: 25)),
                  TextSpan(
                      text:
                          'Nimi Katharinenthal (Kadriorg) võeti senise Fonnenthali asemel kasutusele alles 1740. aastatel.\n\n',
                      style: TextStyle(fontSize: 25)),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture('Kadrioru lossi peafassaad',
                        'assets/illustrations2/1280px-Kadrioru_loss..jpg')
                  ])),
                  TextSpan(
                      text:
                          '\n\n1754. aastal sai peahoone ülakorrus tulekahjus kannatada ning taastamistööde käigus asendati varasem kivikatus plekiga.\n\n',
                      style: TextStyle(fontSize: 25)),
                  TextSpan(
                      text:
                          '1773. aastal toimus küll lossis ulatuslik remont, kuid ülakorruse lagede stukkdekoori taastamisest loobuti. Keisrinna Anna Ivanovna lasi raidkujud ja purskkaevud viia lossipargist Peterhofi palee parki ning Kadrioru loss jäi edaspidi kasutamata ja hooletusse.\n\n',
                      style: TextStyle(fontSize: 25)),
                  TextSpan(
                      text:
                          'Kadrioru lossi paremad päevad saabusid pärast keiser Aleksander I külaskäiku Tallinna 1804. aastal. Selle järel anti Eestimaa kubernerile korraldus loss korrastada ning ehitati praeguse Koidula tänava äärde lossi ülevaataja elumaja, kus tänapäeval asub Eduard Vilde Muuseum. Aja jooksul jäi loss aga jälle keisriperekonna tähelepanuta.\n\n',
                      style: TextStyle(fontSize: 25)),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture('Kadrioru loss talvel',
                        'assets/illustrations2/Kadrioru_loss_talvel_2013.jpg')
                  ])),
                  TextSpan(
                      text:
                          '\n\n1827. aasta ümberehituste käigus kaotas lossi peosaal glasuurkividest põranda ning paljud ruumid oma stukkdekoori ja kaminad.\n\n',
                      style: TextStyle(fontSize: 25)),
                  TextSpan(
                      text:
                          '1837. aastal külastas Tallinna uus Vene keiser Nikolai I, kes andis korralduse loss korrastada ning andis lossi Eestimaa kuberneri suveresidentsiks.\n\n',
                      style: TextStyle(fontSize: 25)),
                  TextSpan(
                      text:
                          '1917. aasta kaksikvõimu ajal Eestis asus Kadrioru lossis Eestimaa Nõukogude Täitevkomitee.\n\n',
                      style: TextStyle(fontSize: 25)),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture('Kadrioru loss u 1910. aastal',
                        'assets/illustrations2/Kadriorg_Palace_c1910.jpg')
                  ])),
                ]),
          ),
          more: true,
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1721",
          subDate: " 30. august",
          cover:
              "Uusikaupunki rahu; Venemaa sai Rootsilt Eesti-, Liivi- ja Ingerimaa ning Kagu-Karjala.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Uusikaupunki rahu; Venemaa sai Rootsilt Eesti-, Liivi- ja Ingerimaa ning Kagu-Karjala.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1730",
          subDate: "",
          cover:
              "Eestis (esialgu Saaremaal) hakkasid tegutsema hernhuutlased (vennastekogudused), kes hoolitsesid rahva kirjaoskuse eest",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Eestis (esialgu Saaremaal) hakkasid tegutsema hernhuutlased (vennastekogudused), kes hoolitsesid rahva kirjaoskuse eest',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1775",
          subDate: "25. juuni",
          cover: "Tartu suurpõleng.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Tartu suurpõleng.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1782",
          subDate: "",
          cover: "Kaotati Venemaa ja Balti kubermangude vaheline tollipiir.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Kaotati Venemaa ja Balti kubermangude vaheline tollipiir.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1783",
          subDate: "",
          cover: "Paldiski sai linna õigused.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Paldiski sai linna õigused.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1784",
          subDate: "16. oktoober",
          cover: "Võru linna asutamine.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Võru linna asutamine.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1788–90",
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
          date: "1792",
          subDate: "",
          cover: "Rõika-Meleski peeglivabriku asutamine.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Rõika-Meleski peeglivabriku asutamine.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1802",
          subDate: "",
          cover:
              "21. aprillil avati taas Tartu ülikool; ilmus Johann Christoph Petri „Eestimaa ja eestlased”.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          '21. aprillil avati taas Tartu ülikool; ilmus Johann Christoph Petri „Eestimaa ja eestlased”.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1812",
          subDate: "",
          cover:
              "Maakaitseväe moodustamine seoses Napoleoni sõjakäiguga Venemaale.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Maakaitseväe moodustamine seoses Napoleoni sõjakäiguga Venemaale.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1816",
          subDate: "",
          cover: "Pärisorjuse kaotamine Eestimaa kubermangus.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Pärisorjuse kaotamine Eestimaa kubermangus.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1817",
          subDate: "",
          cover:
              "Trükis ilmusid esimese eestlasest helilooja Carl Friedrich Karelli klaveripalad.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Trükis ilmusid esimese eestlasest helilooja Carl Friedrich Karelli klaveripalad.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1819",
          subDate: "",
          cover: "Pärisorjuse kaotamine Liivimaa kubermangus.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Pärisorjuse kaotamine Liivimaa kubermangus.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1823",
          subDate: "",
          cover:
              "Johann August von Hagen asutas Tallinnas esimese eestlaste lauluseltsi.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Johann August von Hagen asutas Tallinnas esimese eestlaste lauluseltsi.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1834",
          subDate: "",
          cover: "Sindi kalevivabrik alustas tööd.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Sindi kalevivabrik alustas tööd.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1834–38",
          subDate: "",
          cover: "Põllumajanduse Instituut Vana-Kuustes.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Põllumajanduse Instituut Vana-Kuustes.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1838",
          subDate: "",
          cover: "Õpetatud Eesti Seltsi (ÕES) asutamine.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Õpetatud Eesti Seltsi (ÕES) asutamine.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1839",
          subDate: "",
          cover:
              "Volmaris (Valmiera) asutati kihelkonnakooliõpetajate seminar (Cimze seminar, a-st 1849 Valgas).",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Volmaris (Valmiera) asutati kihelkonnakooliõpetajate seminar (Cimze seminar, a-st 1849 Valgas).',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1841",
          subDate: "september",
          cover: "Pühajärve sõda.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Pühajärve sõda.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1843",
          subDate: "",
          cover:
              "Ilmus Eduard Ahrensi eesti keele grammatika, millest sai alguse meie praegune kirjaviis.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Ilmus Eduard Ahrensi eesti keele grammatika, millest sai alguse meie praegune kirjaviis.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1849",
          subDate: "",
          cover:
              "Nikolai l kinnitas Liivimaa uue talurahvaseaduse; talusid sai hakata ostma päriseks.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Nikolai l kinnitas Liivimaa uue talurahvaseaduse; talusid sai hakata ostma päriseks.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1851",
          subDate: "",
          cover: "Narva linavabriku asutamine.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Narva linavabriku asutamine.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1853",
          subDate: "",
          cover: "Eesti Loodusuurijate Seltsi asutamine.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Eesti Loodusuurijate Seltsi asutamine.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1854–55",
          subDate: "",
          cover:
              "Inglise-Prantsuse laevastik Eesti vetes seoses Krimmi sõjaga.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Inglise-Prantsuse laevastik Eesti vetes seoses Krimmi sõjaga.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1856",
          subDate: "",
          cover:
              "Aleksander II kinnitas Eestimaa uue talurahvaseaduse; ka Põhja-Eestis sai hakata talusid päriseks ostma.",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Aleksander II kinnitas Eestimaa uue talurahvaseaduse; ka Põhja-Eestis sai hakata talusid päriseks ostma.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
    ]
  };
}
