import 'package:flutter/material.dart';
import 'package:ww_weather/Utils/RouteNames.dart';
import 'package:ww_weather/View/Home_Screen.dart';
import 'package:ww_weather/View/Main_Weather_Screen.dart';
import 'package:ww_weather/View/Splash_Screen.dart';

class Routes {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesNames.Weather_HomeScreen:
        final args = settings.arguments as Map<String, dynamic>? ?? {};
        return SlideUpPageRoute(
          page:
              Weather_HomeScreen(cityName: args['CityName'] ?? 'Unknown City'),
        );

      case RoutesNames.Main_WeatherScreen:
        return SlideFromLeftPageRoute(
          page: Main_WeatherScreen(),
        );

      case RoutesNames.SplashScreen:
        return MaterialPageRoute(
            builder: (BuildContext context) => SplashScreen());

      default:
        return MaterialPageRoute(builder: (_) {
          return Scaffold(
            body: Center(
              child: Text("No Routes Defined"),
            ),
          );
        });
    }
  }
}

// Slide from the left transition
class SlideFromLeftPageRoute extends PageRouteBuilder {
  SlideFromLeftPageRoute({required Widget page})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const offsetBegin = Offset(-1.0, 0.0); // Slide from left
            const offsetEnd = Offset.zero;
            const curve = Curves.easeInOut;
            final tween = Tween<Offset>(begin: offsetBegin, end: offsetEnd)
                .chain(CurveTween(curve: curve));
            final offsetAnimation = animation.drive(tween);
            return SlideTransition(position: offsetAnimation, child: child);
          },
        );
}

// Slide upwards transition
class SlideUpPageRoute extends PageRouteBuilder {
  SlideUpPageRoute({required Widget page})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const offsetBegin = Offset(0.0, 1.0); // Slide up
            const offsetEnd = Offset.zero;
            const curve = Curves.easeInOut;
            final tween = Tween<Offset>(begin: offsetBegin, end: offsetEnd)
                .chain(CurveTween(curve: curve));
            final offsetAnimation = animation.drive(tween);
            return SlideTransition(position: offsetAnimation, child: child);
          },
        );
}
