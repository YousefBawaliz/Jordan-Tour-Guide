import 'package:flutter/material.dart';

import 'package:tour_guide_app/project-components/drawer.dart';

import 'home-components/Valleys.dart';
import 'home-components/places.dart';
import 'home-components/monuments.dart';
import 'home-components/restaurants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final tabs = [Places(), Valleys(), Monuments(), Restaurants()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

          // backgroundColor: Color.fromARGB(221, 68, 59, 59),
          ),
      drawer: MyDrawer(),
      body: tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          // iconSize: 30,

          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.place),
                label: "Places",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.restaurant),
                label: "Restaurants",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.hotel),
                label: "Hotels",
                backgroundColor: Colors.black),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Guides",
                backgroundColor: Colors.black),
          ]),
    );
  }
}
