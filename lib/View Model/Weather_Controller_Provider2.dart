import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:ww_weather/Model/Weather_Model.dart';
import 'package:ww_weather/resources/Urls%20Endpoints/WeatherAPI_Urls&function.dart';

class WeatherControllerProvider2 extends ChangeNotifier {
  bool inProgress = false;
  WeatherModel? _weatherModel;
  String _currentTime = '';
  String _currentDate = '';
  String errorMessage = '';

  WeatherModel? get weatherModel => _weatherModel;
  String get currentTime => _currentTime;
  String get currentDate => _currentDate;
  String get error => errorMessage;

  // Function for getting the weather data
  Future<void> getWeatherData(String location) async {
    inProgress = true;
    _weatherModel = null;
    errorMessage = ''; // Clear previous error message
    notifyListeners();

    try {
      _weatherModel = await WeatherApi().GetTheCurrent_Weather(location);
      if (_weatherModel != null && _weatherModel!.location != null) {
        if (kDebugMode) {
          print("Location: ${_weatherModel!.location!.name}");
        }
        if (kDebugMode) {
          print("Local Time: ${_weatherModel!.location!.localtime}");
        }
        UpdateDateTime();
      } else {
        errorMessage = "Weather data or location is null";
      }
    } catch (e) {
      errorMessage =
          "Error fetching weather data \n Please check your internet connection";
      if (kDebugMode) {
        print(errorMessage);
      }
    } finally {
      inProgress = false;
      notifyListeners();
    }
  }

  // Function for updating time and date
  void UpdateDateTime() async {
    if (_weatherModel != null &&
        _weatherModel!.location != null &&
        _weatherModel!.location!.localtime != null) {
      String localTime = _weatherModel!.location!.localtime!;
      if (kDebugMode) {
        print("Formatted Local Time: $localTime");
      }

      // Parsing the local time to a DateTime object
      DateTime parsedLocalTime = DateTime.parse(localTime);

      // Formatting time to 12-hour format with AM/PM
      String formattedTime =
          DateFormat("h:mm a").format(parsedLocalTime); // e.g., "2:30 PM"

      // Formatting the date
      String formattedDate = DateFormat("EEEE, d MMM")
          .format(parsedLocalTime); // e.g., "Monday, 23 Aug"

      _currentTime = formattedTime;
      _currentDate = formattedDate;
    } else {
      _currentTime = '';
      _currentDate = '';
    }
    notifyListeners();
  }
}
