import 'package:geolocator/geolocator.dart';
//
// class Location{
//
//   Location({this.latitude, this.longitude});
//
//   double? latitude;
//   double ?longitude;
//
//   Future<void> getCurrentLocation() async {
//     try{
//       await Geolocator.checkPermission();
//       await Geolocator.requestPermission();
//       Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
//       // print(position);
//       latitude=position.latitude;
//       longitude=position.longitude;
//     }
//
//     catch(e){
//       print(e);
//     }
//   }
//
// }


import 'package:geolocator/geolocator.dart';

class Location {
  double? latitude;
  double? longitude;

  Future<void> getCurrentLocation() async {
    try {
      await Geolocator.checkPermission();
      await Geolocator.requestPermission();
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      // print(position);
      latitude=position.latitude;
      longitude=position.longitude;
    } catch (e) {
      print(e);
    }
  }
}