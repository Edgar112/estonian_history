import 'package:estonian_history/constants.dart';
import 'package:estonian_history/event/view/only_text.dart';
import 'package:estonian_history/global.dart';
import 'package:estonian_history/myMap.dart';
import 'package:estonian_history/transitions/fade_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Event {
  final String name;
  final String cover;
  final Widget text;
  final String image;
  final Color iconBackground;
  final Icon icon;
  final String date;
  final String subDate;
  Event(
      {this.name,
      this.cover,
      this.text,
      this.image,
      this.icon,
      this.iconBackground,
      this.date,
      this.subDate});
}

List<Event> events = [
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
                    fontSize: 26,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // open desired screen
                    }),
              TextSpan(
                  text:
                      'Jääaegsed liustikud taandusid Kagu-Eestist järk-järgult loode poole ja kujundasid maastikku.',
                  style: TextStyle(fontSize: 20)),
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
                  fontSize: 26,
                ),
              ),
              TextSpan(
                  text: 'Pullis',
                  style: TextStyle(
                      fontSize: 26, decoration: TextDecoration.underline),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      Navigator.push(
                          contextHistoryInfo, FadeRoute(page: MyMap()));
                    }),
              TextSpan(
                text: ' peatus mõnda aega rühm küttijaid ja kalastajaid.',
                style: TextStyle(
                  fontSize: 26,
                ),
              ),
            ]),
      ),
      iconBackground: Colors.transparent),
  Event(
      name: "Eesti ala vabanes jääst",
      date: "9000–5000\neKr",
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
                    fontSize: 26,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // open desired screen
                    }),
              TextSpan(
                  text:
                      'Jääaegsed liustikud taandusid Kagu-Eestist järk-järgult loode poole ja kujundasid maastikku.',
                  style: TextStyle(fontSize: 20)),
            ]),
      ),
      iconBackground: Colors.transparent),
  Event(
      name: "Eesti ala vabanes jääst",
      date: "13 000-11 000 eKr",
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
                    fontSize: 26,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // open desired screen
                    }),
              TextSpan(
                  text:
                      'Jääaegsed liustikud taandusid Kagu-Eestist järk-järgult loode poole ja kujundasid maastikku.',
                  style: TextStyle(fontSize: 20)),
            ]),
      ),
      iconBackground: Colors.transparent),
  Event(
      name: "Eesti ala vabanes jääst",
      date: "13 000-11 000 eKr",
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
                    fontSize: 26,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // open desired screen
                    }),
              TextSpan(
                  text:
                      'Jääaegsed liustikud taandusid Kagu-Eestist järk-järgult loode poole ja kujundasid maastikku.',
                  style: TextStyle(fontSize: 20)),
            ]),
      ),
      iconBackground: Colors.transparent),
  Event(
      name: "Eesti ala vabanes jääst",
      date: "13 000-11 000 eKr",
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
                    fontSize: 26,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // open desired screen
                    }),
              TextSpan(
                  text:
                      'Jääaegsed liustikud taandusid Kagu-Eestist järk-järgult loode poole ja kujundasid maastikku.',
                  style: TextStyle(fontSize: 20)),
            ]),
      ),
      iconBackground: Colors.transparent),
  Event(
      name: "Eesti ala vabanes jääst",
      date: "13 000-11 000 eKr",
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
                    fontSize: 26,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // open desired screen
                    }),
              TextSpan(
                  text:
                      'Jääaegsed liustikud taandusid Kagu-Eestist järk-järgult loode poole ja kujundasid maastikku.',
                  style: TextStyle(fontSize: 20)),
            ]),
      ),
      iconBackground: Colors.transparent),
  // Event(
  //     name: "Abu al-Wafa’ al-Buzjani",
  //     date: "1955",
  //     subDate: "19. juuli",
  //     cover:
  //         " Abu al-Wafa' is an innovator whose contributions to science include one of the first known introductions to negative numbers, and the development of the first quadrant, a tool used by astronomers to examine the sky. His pioneering work in spherical trigonometry was hugely influential for both mathematics and astronomy.",
  //     iconBackground: Colors.transparent),
  // Event(
  //     name: "Al-Sufi (Azophi)",
  //     date: "13000 eKr",
  //     subDate: "",
  //     cover:
  //         "Eesti ala vabanesEesti ala vabanes jääst. Jääaegsed liustikud taandusid Kagu-Eestist järk-järgult loode poole ja kujundasid maastikku.",
  //     iconBackground: Colors.transparent),
];
