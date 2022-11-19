// import 'package:flutter/material.dart';

// import 'package:tour_guide_app/widgets/drawer.dart';

// import 'home-components/Valleys.dart';
// import 'home-components/places.dart';
// import 'home-components/monuments.dart';
// import 'home-components/restaurants.dart';

// class Home extends StatefulWidget {
//   const Home({super.key});

//   @override
//   State<Home> createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   int _currentIndex = 0;
//   final tabs = [Places(), Restaurants(), Monuments(), Valleys()];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(

//           // backgroundColor: Color.fromARGB(221, 68, 59, 59),
//           ),
//       drawer: MyDrawer(),
//       body: tabs[_currentIndex],
//       bottomNavigationBar: Container(
//         // let's make our button nav bar float
//         margin: EdgeInsets.all(15),
//         decoration: BoxDecoration(
//           color: Colors.black,
//           borderRadius: BorderRadius.circular(16),
//         ),
//         child: BottomNavigationBar(
//           currentIndex: _currentIndex,
//           // iconSize: 30,

//           onTap: (index) {
//             setState(() {
//               _currentIndex = index;
//             });
//           },
//           elevation: 0.0,
//           selectedItemColor: Colors.white,
//           items: [
//             BottomNavigationBarItem(
//               backgroundColor: Colors.grey.shade900,
//               icon: Icon(Icons.home),
//               label: "Home",
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.restaurant),
//               label: "Restaurants",
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.hotel),
//               label: "Hotels",
//             ),
//             BottomNavigationBarItem(
//               icon: Icon(Icons.person),
//               label: "Guides",
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
