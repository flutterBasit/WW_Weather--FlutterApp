import 'dart:async';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'dart:math' as math;

import 'package:ww_weather/Utils/RouteNames.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Navigate to Main Weather Screen after 6 seconds
    Timer(const Duration(seconds: 8), () {
      Navigator.pushReplacementNamed(context, RoutesNames.Main_WeatherScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xff4494E8),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Positioned curved text closer to the top
            Positioned(
              top: height * 0.18, // Adjusted upward
              child: CurvedTextVertical(
                text: 'World Wide Weather',
                radius: 150, // The radius of the curve
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: 'MontserratAlternates-Regular',
                  fontSize: 25,
                  color: Colors.white,
                ),
              ),
            ),

            // Main container moved upward
            Positioned(
              top: height * 0.1, // Adjusted upward
              child: Material(
                elevation: 20,
                shadowColor: Colors.black,
                borderRadius: BorderRadius.vertical(
                    top: Radius.elliptical(width, 250.0),
                    bottom: Radius.elliptical(width, 250.0)),
                child: Container(
                  height: height * 0.33,
                  width: width * 0.75,
                  decoration: BoxDecoration(
                    gradient: const RadialGradient(colors: [
                      Colors.white,
                      Color.fromARGB(255, 50, 122, 182)
                    ], radius: 0.4),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.elliptical(width, 250.0),
                      bottom: Radius.elliptical(width, 250.0),
                    ),
                  ),
                  child: const Center(
                    child:
                        Image(image: AssetImage('assets/images/weather2.gif')),
                  ),
                ),
              ),
            ),

            // Positioned Loading Animation remains at the bottom
            Positioned(
              bottom: height * 0.25,
              child: LoadingAnimationWidget.discreteCircle(
                  secondRingColor: const Color.fromARGB(255, 50, 122, 182),
                  thirdRingColor: Colors.amberAccent,
                  color: Colors.white,
                  size: 50),
            ),
          ],
        ),
      ),
    );
  }
}

class CurvedTextVertical extends StatelessWidget {
  final String text;
  final double radius;
  final TextStyle style;

  const CurvedTextVertical({
    required this.text,
    required this.radius,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: radius * 2, // Double the radius for full circle width
      height: radius * 1.2, // Adjusted height to reduce space
      child: Stack(
        alignment: Alignment.center,
        children: List.generate(text.length, (index) {
          // Calculate the angle so that the text starts from the left side
          final angle = math.pi - (index * (math.pi / (text.length - 1)));

          return Transform(
            alignment: Alignment.center,
            transform: Matrix4.identity()
              // Translate along the circular arc (no letter rotation)
              ..translate(radius * math.cos(angle), radius * math.sin(angle)),
            child: Text(
              text[index],
              style: style,
            ),
          );
        }),
      ),
    );
  }
}
