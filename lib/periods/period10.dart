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
    [
      Event(
          name: "",
          date: "Põhjasõda Eestis (1700–10)",
          subDate: "",
          cover: "",
          text: RichText(
            text: TextSpan(
                style: TextStyle(fontFamily: 'Exo2', color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Põhjasõda (1700–1721)\n\n',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
                  TextSpan(
                      text:
                          "Sõjas osalesid ühel pool Rootsi, vastaspoolel Moskva tsaaririik, Taani, Saksimaa, Rzeczpospolita ning 1713. aastal liitusid nendega Preisimaa ja Hannover.\n\n",
                      style: TextStyle(fontSize: 25)),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture('Lahingutegevus Põhjasõjas aastatel 1700–1709',
                        'assets/illustrations/Great_Northern_War_Part1.png'),
                    Picture('Sõjategevus Läänemere sõjatandril 1709–1721',
                        'assets/illustrations/Great_Northern_War_Baltic_Theater.png'),
                    Picture(
                        'Ülevalt päripäeva: Narva lahing, Spilve lahing, Poltava lahing, Riilahti lahing, Gadebuschi lahing',
                        'assets/illustrations/Great_Northern_War.jpg'),
                  ], SwiperLayout.DEFAULT)),
                  TextSpan(
                      text: '\n\nPoolte jõud\n\n',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
                  TextSpan(
                      text: 'Rootsi - 77-135 tuh.\n',
                      style: TextStyle(fontSize: 25)),
                  TextSpan(
                      text: 'Ottomani impeerium - 100-200 tuh.\n',
                      style: TextStyle(fontSize: 25)),
                  TextSpan(
                      text: '____________________\n\n',
                      style: TextStyle(fontSize: 25)),
                  TextSpan(
                      text: 'Venemaa - 170 tuh.\n',
                      style: TextStyle(fontSize: 25)),
                  TextSpan(
                      text: 'Kalmyk Khanate - 25 tuh.\n',
                      style: TextStyle(fontSize: 25)),
                  TextSpan(
                      text: 'Taani - 40 tuh.\n',
                      style: TextStyle(fontSize: 25)),
                  TextSpan(
                      text: 'Rzeczpospolita ja Saksimaa - 170 tuh.\n\n',
                      style: TextStyle(fontSize: 25)),
                  TextSpan(
                      text: 'Kaotused\n\n',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
                  TextSpan(
                      text:
                          'Rootsi - 25 tuh võitluskahjumit, 175 tuh - võitluseta kahju (nälg, haigused, kurnatus).\n',
                      style: TextStyle(fontSize: 25)),
                  TextSpan(
                      text: '____________________\n\n',
                      style: TextStyle(fontSize: 25)),
                  TextSpan(
                      text:
                          'Venemaa - 30 tuh lahingukahju, kokku 120 tuh kaotust.\n',
                      style: TextStyle(fontSize: 25)),
                  TextSpan(
                      text: 'Kalmyk Khanate - 5 tuh tapetu.\n',
                      style: TextStyle(fontSize: 25)),
                  TextSpan(
                      text:
                          'Taani - hukkus suuremates lahingutes 8 tuh (kokku 60 tuh).\n',
                      style: TextStyle(fontSize: 25)),
                  TextSpan(
                      text: 'Rzeczpospolita ja Saksimaa - 14-20 tuh.\n\n',
                      style: TextStyle(fontSize: 25)),
                  TextSpan(
                      text: 'Tulemus\n\n',
                      style:
                          TextStyle(fontSize: 25, fontWeight: FontWeight.w600)),
                  TextSpan(
                      text:
                          'Venemaa tsaaririigi ja tema liitlaste võit. Sõja lõpetas Uusikaupunki rahu.\n\n',
                      style: TextStyle(fontSize: 25)),
                  TextSpan(text: '', style: TextStyle(fontSize: 25)),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture(
                        'Ülevalt päripäeva: Narva lahing, Spilve lahing, Poltava lahing, Riilahti lahing, Gadebuschi lahing',
                        'assets/illustrations/Great_Northern_War.jpg'),
                    Picture(
                        'Venemaa keisririigi poolt Uusikaupunki rahulepinguga omandatud maa-alad',
                        'assets/illustrations/NystatIngria.png')
                  ], SwiperLayout.DEFAULT)),
                ]),
          ),
          iconBackground: Colors.transparent),
    ]: [
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
                      text: 'Karl XII lõi venelasi Narva lahingus.\n\n',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture('Rootslaste võit Narva all 1700. aastal',
                        'assets/illustrations/1280px-Victory_at_Narva.jpg')
                  ])),
                ]),
          ),
          more: true,
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
                          'Rootslased said venelastelt Poltaava lahingus lüüa.\n\n',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                  TextSpan(
                      text:
                          'Demoraliseerunud Rootsi armee oli ümbritsetud ning kapituleerus.\n',
                      style: TextStyle(fontSize: 25)),
                  TextSpan(
                      text:
                          'Kokku kaotas Rootsi Poltava lahingu tagajärjel üle 9000 hukkunud inimese ja 18 000 vangi, Moskva tsaaririik kaotas kokku 1345 hukkunut ja 3290 haavatut.\n\n',
                      style: TextStyle(fontSize: 25)),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture('Poltava lahing',
                        'assets/illustrations/plotvaBattle.JPG')
                  ])),
                  TextSpan(
                      text:
                          '\n\nKarl XII asus varju Ottomani impeeriumisse, kus ta üritas veenda sultan Ahmed III alustama sõda Venemaa vastu.\n\n',
                      style: TextStyle(fontSize: 25)),
                  TextSpan(
                      text:
                          '1710. aasta lõpus sai Peeter I teate Türgi armee ettevalmistamisest sõjaks Venemaaga. 1711. aasta alguses kuulutas ta sõja Ottomani impeeriumile ja alustas kampaaniat. Kampaania lõppes täieliku ebaõnnestumisega: Venemaa loovutas Türgile Aasovi ja Zaporožje, hävitas Taganrogi kindlused ja laevad Musta mere ääres ning kaotas juurdepääsu Aasovi merele. Kuid Ottomani impeerium ei astunud Rootsi poolel sõjas.\n\n',
                      style: TextStyle(fontSize: 25)),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture('Ahmed III',
                        'assets/illustrations/800px-III._Ahmet.jpg')
                  ])),
                ]),
          ),
          more: true,
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
