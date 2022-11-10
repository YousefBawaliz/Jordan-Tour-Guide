import 'package:flutter/material.dart';
import 'package:tour_guide_app/Models/Destinations.dart';
import '../Screens/ViewDestinationPage.dart';

class ReUsableCard extends StatelessWidget {
  double hight = 300;

  ReUsableCard({
    Key? key,
    required PreviewSite2 siteData,
    required this.siteName,
    required this.hight,
  })  : _siteData = siteData,
        super(key: key);

  final PreviewSite2 _siteData;
  final String siteName;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(width: 2, color: Colors.white),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      margin: EdgeInsets.all(5),
      height: hight,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DestinationPage(siteindex: 1),
            ),
          );
        },
        child: Stack(
          children: [
            Container(
              height: 200,
              child: Container(
                child: Image(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                    _siteData.getSiteImage(siteName: siteName),
                  ),
                ),
              ),
            ),
            Container(
              child: Text(
                _siteData.getSiteTitle(siteName: siteName),
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
              alignment: Alignment.center,
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: ListTile(
                title: Text(
                  _siteData.getSiteTitle(siteName: siteName),
                ),
                subtitle: Text(
                  "اخفض منطقة في العالم , ويعتبر من الاماكن السياحية العلاجية ",
                  style: TextStyle(fontSize: 13),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
