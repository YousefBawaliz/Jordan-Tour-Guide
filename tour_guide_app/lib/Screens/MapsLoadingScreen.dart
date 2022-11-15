import 'package:flutter/material.dart';
import 'package:tour_guide_app/Screens/GoogleMap.dart';
import 'ViewDestinationPage.dart';
import 'package:tour_guide_app/Services/getWeather.dart';
import 'package:tour_guide_app/Services/getCurrentLocation.dart';

class MapsLoadingScreen extends StatefulWidget {
  final String siteName;
  MapsLoadingScreen({
    required this.siteName,
    super.key,
  });

  @override
  State<MapsLoadingScreen> createState() => _MapsLoadingScreenState();
}

class _MapsLoadingScreenState extends State<MapsLoadingScreen> {
  @override
  void initState() {
    super.initState();
    getCurrentLocation();
  }

  Future<dynamic> getCurrentLocation() async {
    Location location = Location();
    await location.getLocation();
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) {
          return GoogleMapNavigator(
            CurrentLocationLat: location.latitude,
            CurrentLocationLon: location.longitude,
            siteName: widget.siteName,
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
