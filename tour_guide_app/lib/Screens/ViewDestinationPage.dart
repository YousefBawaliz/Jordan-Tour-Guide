import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:tour_guide_app/Screens/guide.dart';
import 'package:tour_guide_app/Services/GetWeather.dart';
import 'package:tour_guide_app/home-components/places.dart';

import '../Models/Destinations.dart';
import '../widgets/weatherWidget.dart';

class DestinationPage extends StatefulWidget {
  final String siteName;
  final locationWeather;
  const DestinationPage(
      {super.key, required this.siteName, required this.locationWeather});

  @override
  State<DestinationPage> createState() => _DestinationPageState();
}

class _DestinationPageState extends State<DestinationPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateUi(widget.locationWeather);
  }

  WeatherModel weather = WeatherModel();
  late double temp;
  late String weatherIcon;
  void updateUi(dynamic weatherData) {
    if (weatherData == null) {
      temp = 0;
      weatherIcon = '';
      return;
    }
    setState(() {
      temp = weatherData['main']['temp'];
      var condition = weatherData['weather'][0]['id'];
      weatherIcon = weather.getWeatherIcon(condition);
    });
  }

  Color mycolor = Color.fromARGB(255, 245, 245, 244);
  Color mycolorr = Color.fromARGB(255, 243, 5, 5);

  List<bool> expanded = [false, false, false, false];
  // SiteStorage mysiteStorage = SiteStorage();
  // List<String> imageList = [
  //   "https://luggageandlipstick.com/wp-content/uploads/2021/10/0-treasury_Patti-Morrow_luggageandlipstick.com_075328.jpg",
  //   "https://www.ytravelblog.com/wp-content/uploads/2022/03/the-treasury-and-siq-petra-jordan-.jpg",
  //   "https://www.backpackadventures.org/wp-content/uploads/2021/02/IMG_2210.jpg"
  // ];

  // List imagelist2 = mysiteStorage.getSiteImageList(siteName: widget.siteName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Places(),
                ));
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black54,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              setState(() {
                if (mycolor == Color.fromARGB(255, 245, 245, 244)) {
                  mycolor = Color.fromARGB(255, 243, 5, 5);
                } else {
                  mycolor = Color.fromARGB(255, 245, 245, 244);
                }
              });
            },
            icon: Icon(Icons.favorite),
            color: mycolor,
          ),
          SizedBox(
            width: 0,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.map),
          ),
        ],

        // backgroundColor: Color.fromARGB(221, 68, 59, 59),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 10, top: 10),
              child: CarouselSlider(
                options: CarouselOptions(
                    enlargeCenterPage: true,
                    enableInfiniteScroll: false,
                    autoPlay: true),
                items: mysiteStorage
                    .getSiteImageList(siteName: widget.siteName)!
                    .map((e) => ClipRRect(
                          borderRadius: BorderRadius.circular(16),
                          child: Stack(
                            fit: StackFit.expand,
                            children: <Widget>[
                              Image.network(
                                e,
                                width: 1050,
                                height: 350,
                                fit: BoxFit.cover,
                              )
                            ],
                          ),
                        ))
                    .toList(),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 0, right: 10),
              child: Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Container(
                      height: 200,
                      width: 300,
                      child: Container(
                        margin: EdgeInsets.all(10),
                        child: Text(mysiteStorage.getSiteDescription(
                            siteName: widget.siteName)),
                      ),
                    ),
                  ),
                  Expanded(
                      child: Weather(
                          icon: weatherIcon,
                          tempreure: temp.toInt().toString())),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 3),
              child: Container(
                margin: EdgeInsets.only(left: 10, right: 10),
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
            ),
          ],
        ),
      ),
    );
  }
}
