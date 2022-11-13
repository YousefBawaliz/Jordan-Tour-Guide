import 'package:flutter/material.dart';
import 'ViewDestinationPage.dart';
import 'package:tour_guide_app/Services/getWeather.dart';
import 'package:tour_guide_app/Services/getCurrentLocation.dart';

class LoadingScreen extends StatefulWidget {
  LoadingScreen({
    super.key,
    required this.siteName,
  });
  String siteName;
  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getDestinationWeather();
  }

  void getDestinationWeather() async {
    WeatherModel weatherModel = WeatherModel();
    var weatherData = await weatherModel.getCityWeather(widget.siteName);
    print(weatherData);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return DestinationPage(
            siteName: widget.siteName,
            locationWeather: weatherData,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}