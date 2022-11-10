import 'package:flutter/material.dart';

import 'package:tour_guide_app/Screens/guide.dart';

import '../Models/Destinations.dart';

class DestinationPage extends StatefulWidget {
  final int siteindex;
  const DestinationPage({super.key, required this.siteindex});

  @override
  State<DestinationPage> createState() => _DestinationPageState();
}

class _DestinationPageState extends State<DestinationPage> {
  List<bool> expanded = [false, false, false, false];
  SiteStorage mysiteStorage = SiteStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              Icon(Icons.favorite),
              SizedBox(
                width: 20,
              ),
              Icon(Icons.map)
            ],
          )
        ],

        // backgroundColor: Color.fromARGB(221, 68, 59, 59),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: NetworkImage(
                        mysiteStorage.getSiteImage(index: widget.siteindex)),
                  ),
                ),
              ),
            ),
            Container(
              child: Row(
                children: [
                  Container(
                    height: 170,
                    width: 300,
                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: Text(mysiteStorage.getSiteDescription(
                          index: widget.siteindex)),
                    ),
                  ),
                  Container(
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)),
                      height: 120,
                      width: 100,
                      child: Column(
                        children: [
                          SizedBox(
                            height: 10,
                          ),
                          Icon(
                            Icons.sunny,
                            size: 70,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            "15C",
                            style: TextStyle(fontSize: 20),
                          )
                        ],
                      ))
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3),
              child: Column(
                children: [
                  ExpansionPanelList(
                      animationDuration: Duration(milliseconds: 500),
                      dividerColor: Colors.black87,
                      elevation: 1,
                      children: [
                        ExpansionPanel(
                          headerBuilder: (context, isExpanded) {
                            return Text("What to see");
                          },
                          body: Text(
                              " An inscription written by “Abdomanchos”, indicates that the tomb was to be used for himself and his family, probably in the reign of Malichus II (40- 70 AD)."),
                          isExpanded: expanded[0],
                        ),
                        ExpansionPanel(
                          headerBuilder: (context, isExpanded) {
                            return Text("Activites");
                          },
                          body: Text(
                              " An inscription written by “Abdomanchos”, indicates that the tomb was to be used for himself and his family, probably in the reign of Malichus II (40- 70 AD)."),
                          isExpanded: expanded[1],
                        ),
                        ExpansionPanel(
                          headerBuilder: (context, isExpanded) {
                            return Text("Reviews");
                          },
                          body: Text(
                              " An inscription written by “Abdomanchos”, indicates that the tomb was to be used for himself and his family, probably in the reign of Malichus II (40- 70 AD)."),
                          isExpanded: expanded[2],
                        ),
                        ExpansionPanel(
                          headerBuilder: (context, isExpanded) {
                            return Text("Guides to help you");
                          },
                          body: TextButton(
                            child: Text(
                              "press here",
                              style: TextStyle(color: Colors.white),
                            ),
                            onPressed: () {
                              Navigator.of(context)
                                  .push(MaterialPageRoute(builder: (context) {
                                return Guide();
                              }));
                            },
                          ),
                          isExpanded: expanded[3],
                        ),
                      ],
                      expansionCallback: (panelIndex, isExpanded) {
                        setState(() {
                          expanded[panelIndex] = !isExpanded;
                        });
                      }),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
