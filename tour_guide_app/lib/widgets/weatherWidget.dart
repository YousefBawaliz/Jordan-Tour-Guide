import 'package:flutter/material.dart';

class Weather extends StatefulWidget {
  String tempreure;
  String icon;
  Weather({required this.tempreure, required this.icon});

  @override
  State<Weather> createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: Colors.grey.shade900,
            borderRadius: BorderRadius.circular(16)),
        height: 150,
        width: 100,
        child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Text(widget.icon, style: TextStyle(fontSize: 70)),
            SizedBox(
              height: 10,
            ),
            Text(
              widget.tempreure,
              style: TextStyle(fontSize: 20),
            )
          ],
        ));
  }
}
