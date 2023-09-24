
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:permission_handler/permission_handler.dart';
// import 'package:weather_flutter/services/location.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:weather_flutter/services/networking.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'location_screen.dart';

import 'package:weather_flutter/services/weather.dart';


// const apiKey='cd35e384ab497d631223c82bc65d73dc';
class LoadingScreen extends StatefulWidget {



  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  double ?latitude;
  double ?longitude;

  @override
  void initState() {
    //this getsloaded when the stateful widget gets created
    //only call once moment when the stateful widget gets created
    super.initState();
    print('initial state is called');
    getLocationData();
  }

  void getLocationData() async {
    var weatherData = await WeatherModel().getLocationWeather();

    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return LocationScreen(
        locationWeather: weatherData,
      );
    }));
  }

  // void getLocationData() async{
  //   // Location location=Location();
  //   // await location.getCurrentLocation();
  //   // latitude=location.latitude;
  //   // longitude=location.longitude;
  //   // getData();
  //   // print(location.latitude);
  //   // print(location.longitude);
  //
  //   // bool isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
  //
  //   // try{
  //   //   await Geolocator.checkPermission();
  //   //   await Geolocator.requestPermission();
  //   //   Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
  //   //   print(position);
  //   // }
  //   // catch(e){
  //   //   print(e);
  //   // }
  //   // NetorkHelper networkHelper=NetorkHelper(url: 'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey&units=metric');
  //   // var weatherData = await networkHelper.getData();
  //
  //   WeatherModel weatherModel =  WeatherModel();
  //   var weatherData=await weatherModel.getLocationWeather();
  //   Navigator.push(context, MaterialPageRoute(builder: (context) {
  //     return LocationScreen(
  //       locationWeather: weatherData,
  //
  //
  //     );
  //   }));
  //
  //     // print(data);
  //
  // }
  //
  // void getData() async {


    // http.Response response = await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$apiKey'));
    //
    //
    // if(response.statusCode==200){
    //   String data=response.body;
    //   var decodeData=jsonDecode(data);
    //   var temperature= decodeData['main']['temp'];
    //   var condition= decodeData['weather'][0]['id'];
    //   var cityName= decodeData['name'];
    //   // print(data);
    //   print(temperature);
    //   print(condition);
    //   print(cityName);
    // }
    // else{
    //   print(response.statusCode);
    // }
    // print(response.body);

  // }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
    body:Center(
      child: SpinKitDoubleBounce(
        color:Colors.white,
        size:100.0
      ),
    ),
      // body: Center(
      //   child: TextButton(
      //     onPressed: (){
      //         getLocation();
      //     },
      //     child: Text('Get Location'),
      //   )
      // ),
    );
  }
}


// var temperature= decodedData['main']['temp'];
// var condition= decodedData['weather'][0]['id'];
// var cityName= decodedData['name'];