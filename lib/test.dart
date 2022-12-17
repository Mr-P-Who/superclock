// import 'package:flutter/services.dart';
// import 'package:timezone/timezone.dart' as tz;
// import 'package:timezone/data/latest.dart' as tz;
// import 'package:flutter/material.dart';

// class TimeHelperService {
//   TimeHelperService() {
//     setup();
//   }
//   Future<void> setup() async {
//     // Load timezone data
//     var byteData = await rootBundle.load('assets/timezone/latest.tzf');
//     tz.initializeDatabase(byteData.buffer.asUint8List());
//     tz.initializeTimeZones();

//     // Iterate and use through the list of timezones.
//     var locations = tz.timeZoneDatabase.locations;
//     for (var element in locations.values) {
//       // debugPrint(element.name);
//       debugPrint(element.currentTimeZone.abbreviation);
//       // debugPrint(element.currentTimeZone.offset.toString());
//       // debugPrint(element.currentTimeZone.isDst.toString());
//       // debugPrint(element.zones.length.toString());
//     }
//   }
// }
