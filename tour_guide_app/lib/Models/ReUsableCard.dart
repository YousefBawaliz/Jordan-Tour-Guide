import 'package:flutter/material.dart';
import 'package:tour_guide_app/Models/Destinations.dart';
import '../Screens/ViewDestinationPage.dart';

class ReUsableCard extends StatelessWidget {
  ReUsableCard({
    Key? key,
    required PreviewSite2 siteData,
    required this.siteName,
  })  : _siteData = siteData,
        super(key: key);

  final PreviewSite2 _siteData;
  final String siteName;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      height: 200,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => DestinationPage(siteindex: 1),
            ),
          );
        },
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 200,
                child: Container(
                  child: Image(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                      _siteData.getSiteImage(siteName: siteName),
                    ),
                  ),
                ),
              ),
              Container(
                alignment: Alignment.bottomLeft,
                child: ListTile(
                  title: Text(
                    _siteData.getSiteTitle(siteName: siteName),
                    style: TextStyle(fontSize: 20),
                  ),
                  subtitle: Text(
                    "Amman",
                    style: TextStyle(fontSize: 13),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
