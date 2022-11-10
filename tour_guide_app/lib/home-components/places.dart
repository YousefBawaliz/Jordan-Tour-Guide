import 'package:flutter/material.dart';

import 'package:tour_guide_app/Models/Destinations.dart';
import '../Models/ReUsableCard.dart';

class Places extends StatefulWidget {
  const Places({super.key});

  @override
  State<Places> createState() => _PlacesState();
}

class _PlacesState extends State<Places> {
  PreviewSite2 _siteData = PreviewSite2();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10, top: 20),
            child: Text(
              "Wellcome in jordan",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.w200),
            ),
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
                  hintText: "Search",
                  prefixIcon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(25.0))),
                ),
              )),
          Row(
            children: [
              Expanded(
                flex: 5,
                child: ReUsableCard(
                  siteData: _siteData,
                  siteName: "Dead sea",
                  hight: 300,
                ),
              ),
              Expanded(
                  flex: 5,
                  child: ReUsableCard(
                    siteData: _siteData,
                    siteName: "Aqaba",
                    hight: 270,
                  )),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 5,
                child: ReUsableCard(
                  siteData: _siteData,
                  siteName: "Im Qays",
                  hight: 250,
                ),
              ),
              Expanded(
                  flex: 5,
                  child: ReUsableCard(
                      siteData: _siteData, siteName: "Ajloan", hight: 300)),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 5,
                child: ReUsableCard(
                    siteData: _siteData, siteName: "Patra", hight: 300),
              ),
              Expanded(
                  flex: 5,
                  child: ReUsableCard(
                      siteData: _siteData, siteName: "Jarash", hight: 250)),
            ],
          ),
          Row(
            children: [
              Expanded(
                flex: 5,
                child: ReUsableCard(
                    siteData: _siteData, siteName: "wadi rum", hight: 250),
              ),
              Expanded(
                  flex: 5,
                  child: ReUsableCard(
                      siteData: _siteData, siteName: "Wadi Mujib", hight: 300)),
            ],
          ),
        ],
      ),
    );
  }
}
