import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:tour_guide_app/Models/Destinations.dart';
import '../Models/ReUsableCard.dart';

class Places extends StatefulWidget {
  const Places({super.key});

  @override
  State<Places> createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
  SiteStorage _siteData = SiteStorage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            width: 20,
            margin: EdgeInsets.only(bottom: 10, top: 20, left: 30, right: 150),
            child: DefaultTextStyle(
                style: TextStyle(
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
                child: AnimatedTextKit(
                  animatedTexts: [
                    TyperAnimatedText("Where do you want to go ?",
                        speed: Duration(milliseconds: 100)),
                  ],
                )),
            alignment: Alignment.center,
          ),
          Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50))),
              margin: EdgeInsets.all(20),
              child: TextFormField(
                decoration: InputDecoration(
                  hintStyle: TextStyle(color: Colors.black),
                  hintText: "Search for place",
                  suffixIcon: Icon(
                    size: 30,
                    Icons.search,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0))),
                ),
              )),
          Container(
            child: ReUsableCard(
              siteData: _siteData,
              siteName: "Dead sea",
            ),
          ),
          Container(
              child: ReUsableCard(
            siteData: _siteData,
            siteName: "Petra",
          )),
          Container(
            child: ReUsableCard(
              siteData: _siteData,
              siteName: "Wadi Mujib",
            ),
          ),
          Container(
              child: ReUsableCard(
            siteData: _siteData,
            siteName: "ajloun",
          )),
          Container(
            child: ReUsableCard(
              siteData: _siteData,
              siteName: "Dead sea",
            ),
          ),
          Container(
              child: ReUsableCard(
            siteData: _siteData,
            siteName: "Jarash",
          )),
          Container(
            child: ReUsableCard(
              siteData: _siteData,
              siteName: "wadi rum",
            ),
          ),
          Container(
              child: ReUsableCard(
            siteData: _siteData,
            siteName: "Im Qays",
          )),
        ],
      ),
    );
  }
}
