import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // Import provider
import 'package:shimmer/shimmer.dart';
import 'package:skeletonizer/skeletonizer.dart';
import 'package:ww_weather/View%20Model/Weather_Controller_Provider2.dart';
import 'package:ww_weather/resources/Constants/Constants.dart';

class Weather_HomeScreen extends StatefulWidget {
  final String? cityName;
  Weather_HomeScreen({super.key, this.cityName});

  @override
  State<Weather_HomeScreen> createState() => _Weather_HomeScreenState();
}

class _Weather_HomeScreenState extends State<Weather_HomeScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(milliseconds: 1500), // Adjust the duration as needed
      vsync: this,
    );
    _slideAnimation = Tween<Offset>(
      begin: Offset(0, 1), // Start position (off-screen at the bottom)
      end: Offset.zero, // End position (on-screen)
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final WeatherControllerProvider2 weatherProvider =
          Provider.of<WeatherControllerProvider2>(context, listen: false);

      if (widget.cityName != null) {
        weatherProvider.getWeatherData(widget.cityName.toString()).then((_) {
          _animationController
              .forward(); // Start the animation when data is loaded
        });
      } else {
        weatherProvider.getWeatherData('').then((_) {
          _animationController
              .forward(); // Start the animation when data is loaded
        });
      }
    });
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Consumer<WeatherControllerProvider2>(
          builder: (context, weatherProvider, child) {
            return RefreshIndicator(
              color: Colors.white,
              backgroundColor: Colors.blueAccent,
              displacement: 50,
              strokeWidth: 5.0,
              onRefresh: () async {
                await weatherProvider.getWeatherData(
                    weatherProvider.weatherModel?.location?.name ?? '');
                weatherProvider.UpdateDateTime();
              },
              child: SingleChildScrollView(
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context)
                        .size
                        .height, // Makes it fit the screen
                  ),
                  child: IntrinsicHeight(
                    child: Container(
                      width: width,
                      decoration: BoxDecoration(
                        gradient: RadialGradient(colors: [
                          weatherProvider.errorMessage == null
                              ? Colors.blue
                              : Colors.blue.shade200,
                          Color(0xff4494E8),
                        ], stops: [
                          0.1,
                          2
                        ], radius: 0.5, center: Alignment(-0.05, -0.55)),
                      ),
                      child: Column(
                        children: [
                          if (weatherProvider.inProgress)
                            SkeletonForLoading(height, width)
                          else if (weatherProvider.error.isNotEmpty)
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                children: [
                                  Icon(
                                    Icons.error,
                                    color: Colors.red,
                                    size: 50,
                                  ),
                                  SizedBox(height: 8),
                                  Text(
                                    weatherProvider.error,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily:
                                          'MontserratAlternates-Regular',
                                      color: Colors.red,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          else
                            SlideTransition(
                              position: _slideAnimation,
                              child: _AppBar(height, width, weatherProvider),
                            ),
                          SlideTransition(
                            position: _slideAnimation,
                            child: _BuildingWeather_Widget1a_Current(
                                height, width, weatherProvider),
                          ),
                          SizedBox(height: 20),
                          SlideTransition(
                            position: _slideAnimation,
                            child: _BuildingWeather_Widget1b_current(
                                height, weatherProvider),
                          ),
                          Expanded(
                            // This will expand the widget to fit available space
                            child: SlideTransition(
                              position: _slideAnimation,
                              child: _BuildingWeather_Widget2_Current(
                                  height, width, weatherProvider),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  Widget SkeletonForLoading(double height, double width) {
    return Skeletonizer(
      enabled: true, // Ensure that Skeletonizer is enabled for loading
      ignoreContainers: true,
      child: Shimmer.fromColors(
        baseColor: Colors.white30,
        highlightColor: Colors.white,
        period: const Duration(seconds: 2), // Adjust shimmer duration as needed
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30),
            // Skeleton for the app bar
            Container(
              width: width * 0.7,
              height: height * 0.08,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [Colors.blue.shade200, Colors.white70],
                  stops: [0.3, 1.0],
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: ListTile(
                title: Text("LocationLocation"),
                leading: Icon(Icons.location_on),
              ),
            ),
            SizedBox(height: 50),
            // Skeleton for the main weather icon and temperature
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  Icons.cloud,
                  size: 120,
                ),
                SizedBox(width: 20),
                Text(
                  "30",
                  style: TextStyle(
                      fontSize: 80, fontFamily: 'MontserratAlternates-Regular'),
                )
              ],
            ),
            SizedBox(height: 50),
            Text('Date and time '),
            SizedBox(height: 30),
            Container(
              width: width * 0.9,
              height: height * 0.5,
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [Colors.blue.shade400, Colors.white70],
                  stops: [0.3, 1.0],
                ),
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 50),
                  Card(
                    color: Colors.white70,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [Icon(Icons.cloud), Text('name')],
                            ),
                            SizedBox(width: 100),
                            Row(
                              children: [Icon(Icons.cloud), Text('name')],
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Row(
                              children: [Icon(Icons.cloud), Text('name')],
                            ),
                            SizedBox(width: 100),
                            Row(
                              children: [Icon(Icons.cloud), Text('name')],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 50),
                  Expanded(
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Center(
                          child: Column(
                            children: [
                              SizedBox(width: 65),
                              Text("data"),
                              Icon(Icons.abc),
                              Text("data")
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _AppBar(
      double height, double width, WeatherControllerProvider2 weatherProvider) {
    return Container(
      height: height * 0.1,
      width: width * 0.65,
      color: Colors.transparent,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.location_on_outlined,
            color: Colors.white,
            size: 30,
          ),
          SizedBox(width: width * 0.05),
          Text(
            weatherProvider.weatherModel?.location?.name ?? 'Unknown City',
            style: TextStyle(
              fontFamily: 'MontserratAlternates-Regular',
              color: Colors.white,
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _BuildingWeather_Widget1a_Current(
      double height, double width, WeatherControllerProvider2 weatherProvider) {
    // Build the image URL, using a fallback image if needed
    final imageUrl = weatherProvider.weatherModel?.current?.condition?.icon;
    final completeImageUrl = imageUrl != null && imageUrl.isNotEmpty
        ? "https:$imageUrl"
        : 'https://via.placeholder.com/150'; // Placeholder or default image

    // Print the complete image URL for debugging
    if (kDebugMode) {
      print('Image URL: $completeImageUrl');
    }

    return Container(
      width: width,
      height: height * 0.25,
      child: Stack(
        children: [
          Positioned(
            left: width * 0.035,
            child: Image.network(
              completeImageUrl,
              width: width * 0.53,
              height: height * 0.3,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                // Handle image loading errors here
                if (kDebugMode) {
                  print('Error loading image: $error');
                }
                return Icon(Icons.error, size: 50, color: Colors.red);
              },
            ),
          ),
          Positioned(
            left: width * 0.5,
            top: height * 0.03,
            child: Text(
              '${weatherProvider.weatherModel?.current?.tempC?.round()}°',
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'MontserratAlternates-Regular'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _BuildingWeather_Widget1b_current(
      double height, WeatherControllerProvider2 weatherProvider) {
    return SizedBox(
        height: height * 0.14,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              weatherProvider.weatherModel?.current?.condition?.text ??
                  'Unknown Condition',
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.white,
                  fontFamily: 'MontserratAlternates-Regular',
                  fontSize: 22,
                  fontWeight: FontWeight.bold),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  weatherProvider.currentDate,
                  style: const TextStyle(
                      color: Colors.white,
                      fontFamily: 'MontserratAlternates-Regular',
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                Text(
                  '  ${weatherProvider.currentTime}',
                  style: const TextStyle(
                      fontFamily: 'MontserratAlternates-Regular',
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                )
              ],
            )
          ],
        ));
  }

  Widget _BuildingWeather_Widget2_Current(
      double height, double width, WeatherControllerProvider2 weatherProvider) {
    if (weatherProvider.weatherModel?.current == null) {
      return Text('No Data Available');
    }
    var currentWeather = weatherProvider.weatherModel?.current;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(13.0),
          child: Material(
            color: Colors.white70,
            elevation: 10,
            borderRadius: BorderRadius.circular(25),
            child: Container(
              height: height * 0.69,
              width: width * 0.97,
              decoration: BoxDecoration(
                gradient: RadialGradient(colors: [Colors.blue, Colors.white70]),
                borderRadius: BorderRadius.circular(25),
              ),
              child: Column(
                children: [
                  SizedBox(height: 20),
                  Text(
                    "Weather Information",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'MontserratAlternates-Regular'),
                  ),
                  Divider(
                    height: height * 0.05,
                    color: Colors.white70,
                  ),
                  Card(
                    margin: EdgeInsets.symmetric(horizontal: 25),
                    shadowColor: Colors.white,
                    color: Colors.white,
                    child: Material(
                      elevation: 10, // Add elevation for shadow effect
                      borderRadius: BorderRadius.circular(
                          15), // Optional for rounded corners
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Color(0xffECF2F8),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.thermostat,
                                        color: Colors.redAccent.shade100,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Column(
                                    children: [
                                      Text('Feels Like'),
                                      Text(
                                        currentWeather!.feelslikeC!
                                                .round()
                                                .toString() +
                                            '°C',
                                        style: const TextStyle(
                                            fontFamily:
                                                'MontserratAlternates-Regular',
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(width: 30),
                              Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Color(0xffECF2F8),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.water_drop,
                                        color: Colors.blueAccent.shade100,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Column(
                                    children: [
                                      Text('Humidity'),
                                      Text(
                                        currentWeather.humidity.toString() +
                                            '%',
                                        style: const TextStyle(
                                            fontFamily:
                                                'MontserratAlternates-Regular',
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                          // Second row
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Color(0xffECF2F8),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.air,
                                        color: Colors.blue.shade300,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 15),
                                  Column(
                                    children: [
                                      Text('Wind'),
                                      Text(
                                        currentWeather.windKph!
                                                .round()
                                                .toString() +
                                            ' Kph',
                                        style: const TextStyle(
                                            fontFamily:
                                                'MontserratAlternates-Regular',
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(width: 30),
                              Row(
                                children: [
                                  Container(
                                    height: 40,
                                    width: 40,
                                    decoration: BoxDecoration(
                                      color: Color(0xffECF2F8),
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Center(
                                      child: Icon(
                                        Icons.wb_sunny,
                                        color: Colors.orangeAccent.shade100,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(width: 20),
                                  Column(
                                    children: [
                                      Text('UV Rays'),
                                      Text(
                                        currentWeather.uv!.toString(),
                                        style: const TextStyle(
                                            fontFamily:
                                                'MontserratAlternates-Regular',
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Divider(
                    height: height * 0.05,
                    color: Colors.white70,
                  ),
                  _BuildingWeather_Widget4(height, width),
                  SizedBox(height: 20),
                  _BuildingWeather_Widget3_Hourly(height, width),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

// Widget for displaying hourly weather data
  Widget _BuildingWeather_Widget3_Hourly(double height, double width) {
    return Consumer<WeatherControllerProvider2>(
      builder: (context, weatherProvider, child) {
        // Accessing the weather data from the provider
        final weatherModel = weatherProvider.weatherModel;

        // Adding null check for forecast data
        if (weatherModel?.forecast?.forecastday?.isEmpty ?? true) {
          return Text('No forecast data available');
        }

        var hourlyData = weatherModel!.forecast!.forecastday!.first.hour!;

        return SizedBox(
          height: height * 0.18, // Adjusted height to fit the content
          width: width,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            scrollDirection: Axis.horizontal,
            itemCount: hourlyData.length,
            itemBuilder: (context, index) {
              var hour = hourlyData[index];
              var time =
                  hour.time?.split(' ')?.last; // Extract only the time part

              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Material(
                  elevation: 10,
                  borderRadius: BorderRadius.circular(8),
                  child: Container(
                    width: width * 0.2, // Adjust width to fit content better
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black54),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly, // Space content evenly
                      children: [
                        Text(
                          time!,
                          style: const TextStyle(
                            fontFamily: 'MontserratAlternates-Regular',
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          width: width * 0.1,
                          height:
                              height * 0.05, // Adjusted height to fit better
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: Color(0xffECF2F8),
                          ),
                          child: Image.network(
                            "https:${hour.condition!.icon}",
                            fit: BoxFit.fill,
                          ),
                        ),
                        Text(
                          '${hour.tempC!.round()}°C',
                          style: const TextStyle(
                            fontFamily: 'MontserratAlternates-Regular',
                            fontSize: 14, // Adjusted font size
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          '${hour.windKph!.round()} Kph',
                          style: const TextStyle(
                            fontFamily: 'MontserratAlternates-Regular',
                            fontSize: 14, // Adjusted font size
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }

// Widget for displaying sunrise and sunset data
  Widget _BuildingWeather_Widget4(double height, double width) {
    return Consumer<WeatherControllerProvider2>(
      builder: (context, weatherProvider, child) {
        // Accessing the weather data from the provider
        final weatherModel = weatherProvider.weatherModel;

        if (weatherModel?.forecast?.forecastday?.isEmpty == true) {
          return Text('No forecast data available');
        } else {
          var sunTime = weatherModel!.forecast!.forecastday!.first.astro;

          // Null check for sunTime
          if (sunTime == null) {
            return Text(
                'No sun timing data available'); // Display if sunTime is null
          }

          return Card(
            margin: EdgeInsets.symmetric(horizontal: 25),
            color: Colors.white,
            child: Material(
              elevation: 10, // Add elevation for shadow effect
              borderRadius:
                  BorderRadius.circular(15), // Optional for rounded corners
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Text(
                        'Sunrise',
                        style: TextStyle(
                            fontFamily: 'MontserratAlternates-Regular'),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffECF2F8),
                        ),
                        child: Icon(
                          Icons.sunny,
                          color: Colors.orangeAccent,
                        ),
                      ),
                      Text(
                        sunTime.sunrise.isNotEmpty
                            ? sunTime.sunrise
                            : 'No sunrise data',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'MontserratAlternates-Regular'),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        'Sunset',
                        style: TextStyle(
                            fontFamily: 'MontserratAlternates-Regular'),
                      ),
                      Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xffECF2F8),
                        ),
                        child: Icon(
                          Icons.dark_mode,
                          color: Color(0xff86775F),
                        ),
                      ),
                      Text(
                        sunTime.sunset.isNotEmpty
                            ? sunTime.sunset
                            : 'No sunset data',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'MontserratAlternates-Regular'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
