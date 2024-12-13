import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:provider/provider.dart';
import 'package:shimmer/shimmer.dart';
import 'package:ww_weather/Model/Weather_Model.dart';
import 'package:ww_weather/Utils/RouteNames.dart';
import 'package:ww_weather/View%20Model/Weather_Controller_Provider1.dart';
import 'package:ww_weather/resources/Constants/Constants.dart';

class Main_WeatherScreen extends StatefulWidget {
  @override
  _Main_WeatherScreenState createState() => _Main_WeatherScreenState();
}

class _Main_WeatherScreenState extends State<Main_WeatherScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _slideAnimation;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      duration: Duration(milliseconds: 1500), // Adjust the duration as needed
      vsync: this,
    );
    _slideAnimation = Tween<Offset>(
      begin: Offset(0, -1), // Start position (off-screen at the top)
      end: Offset.zero, // End position (on-screen)
    ).animate(CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    ));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xff4494E8),
          title: const Text(
            'Weather App',
            style: AppBasic_Contants.AppBar_Style,
          ),
          centerTitle: true,
        ),
        backgroundColor: Color(0xff4494E8),
        body: Consumer<WeatherControllerProvider>(
          builder: (context, weatherProvider, _) {
            if (weatherProvider.weatherModel != null) {
              _animationController
                  .forward(); // Start animation when data is available
            }

            return SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 20),
                  if (!weatherProvider.isSearchBarVisible)
                    _buildSearchIcon(context, weatherProvider),
                  if (weatherProvider.isSearchBarVisible)
                    _buildSearchBar(context, weatherProvider),
                  if (weatherProvider.inProgress)
                    Center(
                      child: LoadingAnimationWidget.discreteCircle(
                          secondRingColor: Color.fromARGB(255, 50, 122, 182),
                          thirdRingColor: Colors.amberAccent,
                          color: Colors.white,
                          size: 50),
                    )
                  else if (weatherProvider.errorMessage.isNotEmpty)
                    _buildErrorWidget(weatherProvider.errorMessage)
                  else if (weatherProvider.weatherModel != null)
                    SlideTransition(
                      position: _slideAnimation,
                      child: _buildWeatherWidget(
                          context, weatherProvider.weatherModel!),
                    ),
                  const SizedBox(height: 20),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  Widget _buildSearchIcon(
      BuildContext context, WeatherControllerProvider provider) {
    return GestureDetector(
      onTap: () {
        provider.toggleSearchBarVisibility();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Icon(
              Icons.search,
              size: 70,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 10),
          Center(
            child: Text(
              'Click to Search Weather of a city',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontFamily: 'MontserratAlternates-Regular'),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSearchBar(
      BuildContext context, WeatherControllerProvider provider) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextField(
        controller: _searchController,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
                color: Color.fromARGB(255, 248, 231, 168), width: 2.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.grey, width: 1.0),
            borderRadius: BorderRadius.circular(10.0),
          ),
          prefixIcon: const Icon(Icons.search),
          hintText: 'Enter city name',
          hintStyle: TextStyle(fontFamily: 'MontserratAlternates-Regular'),
          suffixIcon: IconButton(
            icon: const Icon(Icons.clear),
            onPressed: () {
              _searchController.clear();
            },
          ),
        ),
        onSubmitted: (value) {
          if (value.isNotEmpty) {
            provider.getWeatherData(value);
          }
        },
      ),
    );
  }

  Widget _buildWeatherWidget(BuildContext context, WeatherModel weatherModel) {
    return Column(
      children: [
        Material(
          elevation: 20.0, // Adds the elevation effect
          shadowColor: Colors.black, // Customize shadow color
          borderRadius:
              BorderRadius.circular(20), // Ensure the border radius matches
          child: Container(
            decoration: BoxDecoration(
              gradient: RadialGradient(
                center: const Alignment(-0.1, -0.1),
                colors: [Colors.white70, Colors.blueAccent.shade100],
              ),
              border: Border.all(color: Colors.transparent, width: 3),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  weatherModel.location!.name.toString(),
                  style: AppBasic_Contants.CityName_Style,
                ),
                const SizedBox(height: 10),
                Text(
                  weatherModel.location!.country.toString(),
                  style: AppBasic_Contants.CountryName_Style,
                ),
                const SizedBox(height: 10),
                Text(
                  '${weatherModel.current!.tempC!.round()}°',
                  style: AppBasic_Contants.Temp_Style,
                ),
                const SizedBox(height: 10),
                Text(
                  weatherModel.current!.isDay == 0 ? "Night" : "Day",
                  style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      fontFamily: 'MontserratAlternates-Regular'),
                ),
                const SizedBox(height: 10),
                Icon(
                  weatherModel.current!.isDay == 0
                      ? Icons.dark_mode
                      : Icons.light_mode,
                  size: 100,
                  color:
                      weatherModel.current!.isDay == 0 ? null : Colors.yellow,
                ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 20), // Adds some spacing between widgets
        _BuildingButtonFor_Navigation(context, weatherModel),
      ],
    );
  }

  Widget _buildErrorWidget(String errorMessage) {
    return Center(
      child: Material(
        elevation: 20,
        shadowColor: Colors.black,
        borderRadius: BorderRadius.circular(20),
        child: Container(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              center: const Alignment(-0.9, -0.5),
              colors: [Colors.white70, Colors.blueAccent.shade100],
            ),
            border: Border.all(color: Colors.transparent, width: 3),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Icon(Icons.error, color: Colors.amberAccent, size: 50),
              const SizedBox(height: 16),
              Text(
                errorMessage,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontSize: 18,
                    color: Colors.amberAccent,
                    fontFamily: 'MontserratAlternates-Regular'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _BuildingButtonFor_Navigation(
      BuildContext context, WeatherModel weatherModel) {
    final height = MediaQuery.of(context).size.height * 1;
    final width = MediaQuery.of(context).size.width * 1;
    return SizedBox(
      height: height * 0.2,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              Navigator.pushNamed(context, RoutesNames.Weather_HomeScreen,
                  arguments: {
                    'CityName': weatherModel.location!.name.toString()
                  });
            },
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'See more weather details ',
                  style: AppBasic_Contants.Navigation_Style,
                ),
                Icon(
                  Icons.navigate_next,
                  size: 35,
                  color: Colors.black,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
