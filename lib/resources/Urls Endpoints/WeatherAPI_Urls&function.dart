// import 'dart:convert';

// import 'package:ww_weather/Model/Weather_Model.dart';
// import 'package:ww_weather/resources/Urls%20Endpoints/WeatherAPI_Key.dart';
// import 'package:http/http.dart' as http;

// class WeatherApi {
//   final String BaseUrl = 'http://api.weatherapi.com/v1/current.json';

//   Future<WeatherModel> GetTheCurrent_Weather(String location) async {
//     String ApiKeyUrl = "$BaseUrl?Key=$WeatherAPIKey&q=$location";

//     try {
//       final response = await http.get(Uri.parse(ApiKeyUrl));
//       if (response.statusCode == 200) {
//         // print(response.body);
//         print('response getted');
//         return WeatherModel.fromJson(jsonDecode(response.body));
//       } else {
//         print('in else section');
//         throw Exception('Failed To load the data');
//       }
//     } catch (e) {
//       throw Exception('Failed To load the data');
//     }
//   }
// }
import 'dart:convert';
import 'package:ww_weather/Model/Weather_Model.dart';
import 'package:ww_weather/resources/Urls%20Endpoints/WeatherAPI_Key.dart';
import 'package:http/http.dart' as http;

class WeatherApi {
  final String BaseUrl = 'http://api.weatherapi.com/v1/forecast.json';

  Future<WeatherModel> GetTheCurrent_Weather(String location) async {
    String ApiKeyUrl = "$BaseUrl?key=$WeatherAPIKey&q=$location";

    try {
      final response = await http.get(Uri.parse(ApiKeyUrl));
      if (response.statusCode == 200) {
        print('response received');
        // print(response.body);
        return WeatherModel.fromJson(jsonDecode(response.body));
      } else {
        print('Error: ${response.statusCode} - ${response.reasonPhrase}');
        throw Exception('Failed to load data: ${response.reasonPhrase}');
      }
    } catch (e) {
      print('Exception: $e');
      throw Exception('Failed to load data: $e');
    }
  }
}
