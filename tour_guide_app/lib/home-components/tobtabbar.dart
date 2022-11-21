import 'package:flutter/material.dart';
import 'package:tour_guide_app/home-components/places.dart';
import 'package:tour_guide_app/home-components/places2.dart';
import 'package:tour_guide_app/home-components/places3.dart';

class tobTabPar extends StatefulWidget {
  const tobTabPar({super.key});

  @override
  State<tobTabPar> createState() => _tobTabParState();
}

class _tobTabParState extends State<tobTabPar>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: Container(
          color: Colors.grey.shade900,
          child: TabBar(
              indicator:
                  UnderlineTabIndicator(borderSide: BorderSide(width: 0)),
              controller: _tabController,
              tabs: <Widget>[
                Tab(
                  text: ("Places"),
                ),
                Tab(
                  text: ("Museums"),
                ),
                Tab(
                  text: ("Hotel"),
                ),
              ]),
        ),
      ),
      body: TabBarView(controller: _tabController, children: <Widget>[
        Places2(),
        Places3(),
        Text("Hotel API"),
      ]),
    );
  }
}
