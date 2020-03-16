import 'dart:math';

import 'package:firebase_database/firebase_database.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class DriverSimulator {
  var _firebaseRef;

  DriverSimulator(DatabaseReference firebaseRef) {
    _firebaseRef = firebaseRef;
  }

  List<LatLng> driverRoute = [
    LatLng(29.907150, 31.055734),
    LatLng(29.906816, 31.057536),
//    LatLng(29.906732, 31.058974),
//    LatLng(29.906602, 31.060551),
//    LatLng(29.906072, 31.061903),
//    LatLng(29.905254, 31.062997),
//    LatLng(29.904370, 31.064124),
    LatLng(29.903496, 31.065261),
    LatLng(29.902566, 31.066280),
    LatLng(29.901673, 31.067460),
    LatLng(29.900785, 31.068492),
    LatLng(29.899948, 31.069340),
    LatLng(29.898701, 31.065082),
    LatLng(29.898069, 31.059353),
    LatLng(29.896248, 31.058142),
    LatLng(29.897149, 31.073040),
    LatLng(29.895293, 31.075455),
    LatLng(29.893595, 31.079328),
    LatLng(29.892662, 31.080896),
    LatLng(29.892600, 31.080776),
  ];

  void updateDriverLocation() async {
    await Future.delayed(Duration(seconds: 5), () {});

    for (LatLng latLng in driverRoute) {
      Map<String, dynamic> values = Map();
      values["latitude"] = latLng.latitude;
      values["longitude"] = latLng.longitude;

      _firebaseRef.child("driver1").update(values);

      await Future.delayed(Duration(seconds: Random().nextInt(10)), () {});
    }
  }
}