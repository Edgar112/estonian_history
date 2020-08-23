import 'package:Eesti_Ajalugu/models/event.dart';

class Period {
  String periodTitle;
  Map<List<Event>, List<Event>>
      events; // key - period description, value - period events
  Period({this.periodTitle, this.events});
}
