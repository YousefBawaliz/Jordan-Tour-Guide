import 'package:flutter/material.dart';
import 'package:tour_guide_app/testguides.dart';

import 'Screens/testPage.dart';
import 'home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(),
      home: Home(),
    );
  }
}
