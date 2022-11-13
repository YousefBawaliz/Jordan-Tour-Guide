import 'Site.dart';

// class SiteStorage {
//   final List<sites> _siteData = [
//     sites(
//         siteImage:
//             "https://upload.travelawaits.com/ta/uploads/2021/04/6774bc9a0dad571855fb28138b8a46774bc.jpg",
//         title: "Petra",
//         description:
//             " An inscription written by “Abdomanchos”, indicates that the tomb was to be used for himself and his family, probably in the reign of Malichus II (40- 70 AD)."),
//     sites(
//         siteImage:
//             "https://dannythedigger.com/wp-content/uploads/jerash-tour-scaled-e1619676987568.jpg",
//         title: "jarash",
//         description:
//             " Jerash is a city in Jordan, north of the capital Amman. Inhabited since the Bronze Age, it’s known for the ruins of the walled Greco-Roman settlement of Gerasa just outside the modern city. These include the 2nd-century Hadrian’s Arch, the Corinthian columns of the Temple of Artemis and the huge Forum’s oval colonnade. The Jerash Archaeological Museum displays artifacts excavated from the site"),
//   ];

//   String getSiteTitle({required int index}) {
//     return _siteData[index].title;
//   }

//   String getSiteImage({required int index}) {
//     return _siteData[index].siteImage;
//   }

//   String getSiteDescription({required int index}) {
//     return _siteData[index].description;
//   }
// }

class SiteStorage {
  final Map<String, Sites> _mySitePreviewData = {
    'Jarash': Sites(
        imageList: [
          "https://luggageandlipstick.com/wp-content/uploads/2021/10/0-treasury_Patti-Morrow_luggageandlipstick.com_075328.jpg",
          "https://www.ytravelblog.com/wp-content/uploads/2022/03/the-treasury-and-siq-petra-jordan-.jpg",
          "https://www.backpackadventures.org/wp-content/uploads/2021/02/IMG_2210.jpg"
        ],
        siteImage:
            "https://dannythedigger.com/wp-content/uploads/jerash-tour-scaled-e1619676987568.jpg",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
        title: "Jarash",
        previewimage:
            "http://centers.ju.edu.jo/en/ujlc/Documents/Photos/jarash.jpg"),
    'Aqaba': Sites(
        imageList: [
          "https://luggageandlipstick.com/wp-content/uploads/2021/10/0-treasury_Patti-Morrow_luggageandlipstick.com_075328.jpg",
          "https://www.ytravelblog.com/wp-content/uploads/2022/03/the-treasury-and-siq-petra-jordan-.jpg",
          "https://www.backpackadventures.org/wp-content/uploads/2021/02/IMG_2210.jpg"
        ],
        siteImage:
            "https://storage.googleapis.com/alghad-media/2021/09/WhatsApp-Image-2021-09-11-at-8.42.02-AM.jpeg",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
        title: "Aqaba",
        previewimage:
            "https://storage.googleapis.com/alghad-media/2021/09/WhatsApp-Image-2021-09-11-at-8.42.02-AM.jpeg"),
    'Dead sea': Sites(
        imageList: [
          "https://images-ext-2.discordapp.net/external/A8W-TUO8u1qoXl-Mqfy8Dl8OJCW_ptk9lC6kSyFdWiw/https/www.planetware.com/wpimages/2021/02/jordan-dead-sea-region-top-attractions-dead-sea-resort-area.jpg",
          "https://www.ytravelblog.com/wp-content/uploads/2022/03/the-treasury-and-siq-petra-jordan-.jpg",
          "https://www.backpackadventures.org/wp-content/uploads/2021/02/IMG_2210.jpg"
        ],
        siteImage:
            "https://iresizer.devops.arabiaweather.com/resize?url=https://adminassets.devops.arabiaweather.com/sites/default/files/field/image/dead-sea2.jpg&size=850x478&force_jpg=1",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
        title: "Dead sea",
        previewimage:
            "https://iresizer.devops.arabiaweather.com/resize?url=https://adminassets.devops.arabiaweather.com/sites/default/files/field/image/dead-sea2.jpg&size=850x478&force_jpg=1"),
    'wadi rum': Sites(
        imageList: [
          "https://luggageandlipstick.com/wp-content/uploads/2021/10/0-treasury_Patti-Morrow_luggageandlipstick.com_075328.jpg",
          "https://www.ytravelblog.com/wp-content/uploads/2022/03/the-treasury-and-siq-petra-jordan-.jpg",
          "https://www.backpackadventures.org/wp-content/uploads/2021/02/IMG_2210.jpg"
        ],
        siteImage:
            "https://media-cdn.tripadvisor.com/media/photo-s/1a/7a/de/0c/wadi-rum-palmera-camp.jpg",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
        title: "wadi rum",
        previewimage:
            "https://media-cdn.tripadvisor.com/media/photo-s/1a/7a/de/0c/wadi-rum-palmera-camp.jpg"),
    'ajloun': Sites(
        imageList: [
          "https://www.touristjordan.com/wp-content/uploads/2019/02/Ajloun-Forest-Reserve-e1551353632193.jpg",
          "https://media.tacdn.com/media/attractions-splice-spp-674x446/06/8d/5d/4c.jpg",
          "https://www.bookingjordan.com/uploads/images/blog/407985_a.jpg"
        ],
        siteImage:
            "https://www.zamantours.com/wp-content/uploads/2020/05/Region-2_1-900x685-1.jpg",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
        title: "ajloun",
        previewimage:
            "https://www.zamantours.com/wp-content/uploads/2020/05/Region-2_1-900x685-1.jpg"),
    'Im Qays': Sites(
        imageList: [
          "https://luggageandlipstick.com/wp-content/uploads/2021/10/0-treasury_Patti-Morrow_luggageandlipstick.com_075328.jpg",
          "https://www.ytravelblog.com/wp-content/uploads/2022/03/the-treasury-and-siq-petra-jordan-.jpg",
          "https://www.backpackadventures.org/wp-content/uploads/2021/02/IMG_2210.jpg"
        ],
        siteImage:
            "https://modo3.com/thumbs/fit630x300/197704/1536241454/%D9%85%D8%AF%D9%8A%D9%86%D8%A9_%D8%A3%D9%85_%D9%82%D9%8A%D8%B3.jpg",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
        title: "Im Qays",
        previewimage:
            "https://modo3.com/thumbs/fit630x300/197704/1536241454/%D9%85%D8%AF%D9%8A%D9%86%D8%A9_%D8%A3%D9%85_%D9%82%D9%8A%D8%B3.jpg"),
    'Petra': Sites(
        imageList: [
          "https://luggageandlipstick.com/wp-content/uploads/2021/10/0-treasury_Patti-Morrow_luggageandlipstick.com_075328.jpg",
          "https://www.ytravelblog.com/wp-content/uploads/2022/03/the-treasury-and-siq-petra-jordan-.jpg",
          "https://www.backpackadventures.org/wp-content/uploads/2021/02/IMG_2210.jpg"
        ],
        siteImage:
            "https://cdn1-m.alittihad.ae/store/archive/image/2020/12/7/c6df0a0a-31d1-4b32-a160-fd40bb49a762.png?width=1300",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
        title: "Petra",
        previewimage:
            "https://cdn1-m.alittihad.ae/store/archive/image/2020/12/7/c6df0a0a-31d1-4b32-a160-fd40bb49a762.png?width=1300"),
    'Maeein Falls': Sites(
        imageList: [
          "https://luggageandlipstick.com/wp-content/uploads/2021/10/0-treasury_Patti-Morrow_luggageandlipstick.com_075328.jpg",
          "https://www.ytravelblog.com/wp-content/uploads/2022/03/the-treasury-and-siq-petra-jordan-.jpg",
          "https://www.backpackadventures.org/wp-content/uploads/2021/02/IMG_2210.jpg"
        ],
        siteImage: "https://pbs.twimg.com/media/C6zWKOfW0AEuFR9.jpg",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
        title: "Maeein Falls",
        previewimage: "https://pbs.twimg.com/media/C6zWKOfW0AEuFR9.jpg"),
    'Wadi Mujib': Sites(
        imageList: [
          "https://www.zamantours.com/wp-content/uploads/2020/05/Mujeb.jpg",
          "https://media.tacdn.com/media/attractions-splice-spp-674x446/0a/a1/9a/f7.jpg",
          "https://www.backpackadventures.org/wp-content/uploads/2021/02/IMG_2210.jpg"
        ],
        siteImage:
            "http://wonderstourism.com/wp-content/uploads/2013/05/wadi-al-mujib-canyon-Jordan1.jpg",
        description:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
        title: "Wadi Mujib",
        previewimage:
            "http://wonderstourism.com/wp-content/uploads/2013/05/wadi-al-mujib-canyon-Jordan1.jpg"),
  };

  String getSiteTitle({required String siteName}) {
    return _mySitePreviewData[siteName]!.title;
  }

  String getSitePreviewImage({required String siteName}) {
    return _mySitePreviewData[siteName]!.previewimage;
  }

  String getSiteDescription({required String siteName}) {
    return _mySitePreviewData[siteName]!.description;
  }

  String getSiteMainImage({required String siteName}) {
    return _mySitePreviewData[siteName]!.description;
  }

  List? getSiteImageList({required String siteName}) {
    return _mySitePreviewData[siteName]!.imageList;
  }
}
