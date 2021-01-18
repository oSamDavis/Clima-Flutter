import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;


  Future getCurrentLocation() async
  {
    try
    {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
      longitude = position.longitude;
      latitude = position.latitude;
      print(position);
    }
    catch(e)
    {
      print(e);
    }
  }


}