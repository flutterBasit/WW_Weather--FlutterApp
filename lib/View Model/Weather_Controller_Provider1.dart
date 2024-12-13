import 'package:flutter/material.dart';
import 'package:ww_weather/Model/Weather_Model.dart';
import 'package:ww_weather/resources/Urls%20Endpoints/WeatherAPI_Urls&function.dart';

class WeatherControllerProvider extends ChangeNotifier {
  bool inProgress = false;
  String errorMessage = '';
  WeatherModel? _weatherModel;
  bool _isSearchBarVisible = false;

  WeatherModel? get weatherModel => _weatherModel;
  bool get isSearchBarVisible => _isSearchBarVisible;

  void toggleSearchBarVisibility() {
    _isSearchBarVisible = !_isSearchBarVisible;
    notifyListeners();
  }

  Future<void> getWeatherData(String location) async {
    inProgress = true;
    errorMessage = '';
    notifyListeners();

    try {
      final weatherData = await WeatherApi().GetTheCurrent_Weather(location);

      if (weatherData != null && weatherData.location != null) {
        _weatherModel = weatherData;
        errorMessage = '';
        notifyListeners();
      } else {
        errorMessage = "Oops! City not found or invalid data.";
        notifyListeners();
      }
    } catch (e) {
      errorMessage =
          "Oops! Invalid city name \n or \n Check your internet connection.";
      notifyListeners();
    } finally {
      inProgress = false;
      notifyListeners();
    }
  }
}
