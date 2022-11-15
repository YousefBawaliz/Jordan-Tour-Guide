import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_polyline_points/flutter_polyline_points.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:tour_guide_app/Services/getCurrentLocation.dart';

class GoogleMapNavigator extends StatefulWidget {
  final double? CurrentLocationLat;
  final double? CurrentLocationLon;
  final String siteName;
  GoogleMapNavigator({
    Key? key,
    required this.CurrentLocationLat,
    required this.CurrentLocationLon,
    required this.siteName,
  }) : super(key: key);

  @override
  State<GoogleMapNavigator> createState() => GoogleMapNavigatorState();
}

class GoogleMapNavigatorState extends State<GoogleMapNavigator> {
  // Future<dynamic> getCurrentLocationLat() async {
  //   Location location = Location();
  //   await location.getLocation();
  //   return [location.longitude,location.longitude];
  // }

  final Completer<GoogleMapController> _controller = Completer();

  late LatLng sourceLocation =
      LatLng(widget.CurrentLocationLat!, widget.CurrentLocationLon!);
  LatLng destination = LatLng(37.33429383, -122.06600055);

  List<LatLng> polylineCoordinates = [];

  void getpolypoints() async {
    PolylinePoints polylinePoints = PolylinePoints();
    PolylineResult result = await polylinePoints.getRouteBetweenCoordinates(
      "AIzaSyD7tckf0pB9D87IZPD2-BDzPTr1QPoZNJU",
      PointLatLng(sourceLocation.latitude, sourceLocation.longitude),
      PointLatLng(destination.latitude, destination.longitude),
    );

    if (result.points.isNotEmpty) {
      result.points.forEach(
        (PointLatLng point) => polylineCoordinates.add(
          LatLng(point.latitude, point.longitude),
        ),
      );
      setState(() {});
    }
  }

  @override
  void initState() {
    getpolypoints();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Track order",
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
      ),
      body: GoogleMap(
          polylines: {
            Polyline(
              polylineId: PolylineId('route'),
              points: polylineCoordinates,
              width: 6,
            )
          },
          initialCameraPosition:
              CameraPosition(target: sourceLocation, zoom: 15),
          markers: {
            Marker(markerId: MarkerId("source"), position: sourceLocation),
            Marker(markerId: MarkerId("Destination"), position: destination),
          }),
    );
  }
}
