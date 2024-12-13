import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:ww_weather/Utils/RouteNames.dart';
import 'package:ww_weather/Utils/Routes.dart';
import 'package:ww_weather/View%20Model/Weather_Controller_Provider1.dart';
import 'package:ww_weather/View%20Model/Weather_Controller_Provider2.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => WeatherControllerProvider()),
          ChangeNotifierProvider(create: (_) => WeatherControllerProvider2())
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: RoutesNames.SplashScreen,
          onGenerateRoute: Routes.generateRoute,
        ));
  }
}
