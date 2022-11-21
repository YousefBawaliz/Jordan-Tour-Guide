import 'package:flutter/material.dart';
import 'package:tour_guide_app/Screens/favourite_screen.dart';
import 'package:tour_guide_app/Screens/guide.dart';
import 'package:tour_guide_app/Screens/login_screen.dart';
import 'package:tour_guide_app/Screens/search_screen.dart';
import 'package:tour_guide_app/home-components/Valleys.dart';
import 'package:tour_guide_app/home-components/places2.dart';
import 'package:tour_guide_app/home-components/restaurants.dart';
import 'package:tour_guide_app/testguides.dart';
import 'package:tour_guide_app/widgets/drawer.dart';

import 'home-components/tobtabbar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _tabController?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MyDrawer(),
      appBar: AppBar(
        actions: [
          Container(
            margin: EdgeInsets.only(right: 100),
            alignment: Alignment.centerLeft,
            child: Text(
              "𝕁𝕆ℝ𝔻𝔸ℕ",
              style: TextStyle(fontSize: 30),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 30,
            ),
          ),
        ],
        // actions: [Row(children: [

        //   CircleAvatar(foregroundImage: NetworkImage("https://w7.pngwing.com/pngs/340/946/png-transparent-avatar-user-computer-icons-software-developer-avatar-child-face-heroes-thumbnail.png"),),
        //              SizedBox(width: 10,),

        //   Text("username",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),),

        //   SizedBox(width: 150,),

        // ],)

        // ],
      ),
      body: TabBarView(controller: _tabController, children: <Widget>[
        tobTabPar(),
        FavouriteScreen(),
        SearchScreen(),
        Test(),
        MyDrawer()
      ]),
      bottomNavigationBar: Container(
        color: Colors.grey.shade900,
        child: TabBar(
            indicator: UnderlineTabIndicator(borderSide: BorderSide(width: 0)),
            controller: _tabController,
            tabs: <Widget>[
              Tab(
                icon: Icon(Icons.other_houses),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.favorite),
                text: "Favorite",
              ),
              Tab(
                icon: Icon(Icons.search),
                text: "Search",
              ),
              Tab(
                icon: Icon(Icons.person),
                text: "Guides",
              ),
              Tab(
                icon: Icon(
                  Icons.list,
                ),
                text: "More",
              )
            ]),
      ),
    );
  }
}
