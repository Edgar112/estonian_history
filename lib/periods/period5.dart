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

Map<List<Event>, List<Event>> getPeriod5() {
  return {
    [
      Event(
          name: "",
          date: "Jüriöö ülestõus (1343–45)",
          subDate: "",
          cover: "",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Jüriöö ülestõus oli aastatel 1343–1345 Harjumaal, Läänemaal ja Saaremaal toimunud eestlaste ülestõus Taani ja Liivi ordu ülemvõimu vastu.\n\n',
                      style: TextStyle(fontSize: 25)),
                  TextSpan(
                    text: 'Toimumiskoht\n\n',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: 'Harjumaa, Läänemaa, Saaremaa.\n\n',
                    style: TextStyle(fontSize: 25),
                  ),
                  TextSpan(
                    text: 'Tulemus\n\n',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: 'Ülestõus surutakse maha.\n\n',
                    style: TextStyle(fontSize: 25),
                  ),
                  WidgetSpan(
                      child: ImageSwiper([
                    Picture('Ülestõusu kulgu kirjeldav kaart',
                        'assets/illustrations/Jüriöö_ülestõus.png')
                  ]))
                ]),
          ),
          iconBackground: Colors.transparent),
    ]: [
      Event(
          name: "",
          date: "1343",
          subDate: "23. aprill",
          cover:
              "Harju ülestõusu algus; mõisate, kirikute ja kabelite ning Padise kloostri põletamine, sakslaste tapmine; eestlased piirasid Tallinna; 4 vanema valimine.",
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Harju ülestõusu algus; mõisate, kirikute ja kabelite ning Padise kloostri põletamine, sakslaste tapmine; eestlased piirasid Tallinna; 4 vanema valimine.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1343",
          subDate: "u 25. aprill",
          cover: 'Läänemaa ülestõusu algus.',
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Läänemaa ülestõusu algus.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1343",
          subDate: "4. mai",
          cover: 'Läbirääkimised ja Eesti vanemate tapmine Paides.',
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Läbirääkimised ja Eesti vanemate tapmine Paides.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1343",
          subDate: "11. mai",
          cover:
              'Kimmole ja Kanavere lahing - võitlus eestlaste tõkestusväe ja Tallinnale appitulnud orduväe vahel.',
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Kimmole ja Kanavere lahing - võitlus eestlaste tõkestusväe ja Tallinnale appitulnud orduväe vahel.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1343",
          subDate: "14. mai",
          cover:
              'Sõjamäe lahing, Tallinna piirava eestlaste peaväe lüüasaamine.',
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Sõjamäe lahing, Tallinna piirava eestlaste peaväe lüüasaamine.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1343",
          subDate: "18. mai",
          cover:
              'Viiburi foogti laevaväe saabumine Tallinna, eestlastele appi.',
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Viiburi foogti laevaväe saabumine Tallinna, eestlastele appi.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1343",
          subDate: "26. mai",
          cover: 'Algas Pihkva väe tungimine Tartu piiskopkonda.',
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text: 'Algas Pihkva väe tungimine Tartu piiskopkonda.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1343",
          subDate: "24. juuli",
          cover: 'Saaremaa ülestõusu algus, Pöide piiramine ja langemine.',
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Saaremaa ülestõusu algus, Pöide piiramine ja langemine.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1343",
          subDate: "aasta lõpp",
          cover: 'Teine orduvägi tuli Harjumaale eestlasi karistama.',
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Teine orduvägi tuli Harjumaale eestlasi karistama.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1344",
          subDate: "veebruar",
          cover: 'Orduväe tungimine Saaremaale, vanem Vesse hukkamine.',
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Orduväe tungimine Saaremaale, vanem Vesse hukkamine.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
      Event(
          name: "",
          date: "1345",
          subDate: "",
          cover:
              'Talvel orduväe teine tungimine Saaremaale ning saare täielik allutamine.',
          text: RichText(
            text: TextSpan(
                style: GoogleFonts.exo2(color: kText2Color),
                children: <InlineSpan>[
                  TextSpan(
                      text:
                          'Talvel orduväe teine tungimine Saaremaale ning saare täielik allutamine.',
                      style: TextStyle(
                          fontSize: 25, color: kText2Color.withOpacity(0.6))),
                ]),
          ),
          iconBackground: Colors.transparent),
    ]
  };
}
