import 'dart:convert';

import 'package:http/http.dart'as http;

import 'Location.dart';


class Weather {
    
  
   Future GetWeatherbyCor(UserLocation userLocation)async {
   Map weather;
   var apikey = 'a74535b072c65c933104049a876ceec1';//to get this api u need
   // to register in weather api

      var url = 'https://api.myjson.com/bins/xiv0c?lat=${userLocation.latitude}&lon=${userLocation.longitude}&appid=$apikey&units=metric';
    
    http.Response httpResponse = await http.get(url);
   weather = json.decode(httpResponse.body);
  // weather = weather['weather'];
   if (weather.isNotEmpty){
   print(weather);
    return weather;
   }
   else print('null');
  }
  Future GetForcast(UserLocation userLocation)async {
   Map forecast;
   var apikey = 'a74535b072c65c933104049a876ceec1';

      var url = 'https://api.myjson.com/bins/xiv0c?lat=${userLocation.latitude}&lon=${userLocation.longitude}&appid=$apikey&units=metric';
    
    http.Response httpResponse = await http.get(url);
   forecast = json.decode(httpResponse.body);
  // weather = weather['weather'];
   if (forecast.isNotEmpty){

    return forecast;
   }
   else print('null');
  }
   GetWeatherbyString(String City)async {
   
   var apikey = 'a74535b072c65c933104049a876ceec1';
  
    var url = 'https://api.myjson.com/bins/xiv0c?q=$City&APPID=$apikey';
   
    Map Weather;
    http.Response httpResponse = await http.get(url);
   Weather = json.decode(httpResponse.body);
   if (Weather.isNotEmpty){
   print(Weather);
   return Weather;
   }
   else print('null');
  }
}