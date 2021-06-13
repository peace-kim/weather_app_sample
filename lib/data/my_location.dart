import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class MyLocation {
  double? latitude2;
  double? longitude2;

  Future<void> getMyCurrentLocation() async {
    // print("before await");
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      latitude2 = position.latitude;
      longitude2 = position.longitude;
      print(position);
      print(latitude2);
      print(longitude2);
      // print("location is pressed");
    } catch (e) {
      print('there was a problem connecting internet');
    }
  }
}
